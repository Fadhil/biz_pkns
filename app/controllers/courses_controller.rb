class CoursesController < ApplicationController
  load_and_authorize_resource
  # GET /courses
  # GET /courses.json
  def index
    if current_user && ( current_user.admin? )
      @courses = Course.latest.order(:status).page(params[:page])
    elsif current_consultant
      #todo use session[:current_program_id]
      if session[:current_program_id].nil?
        @courses = []
      else
        @courses = current_consultant.programs.find(session[:current_program_id]).courses.latest.order(:status).page(params[:page])
      end
    else
      @courses = []
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses.to_json(:include => [:name]) }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    if @course.end_date < Date.today
      @course.status = false
      @course.save
    end
    @attendance_list = @course.attendance_list
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: t('successfully_created',resource: t('course')) }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: t('successfully_updated',resource: t('course')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  def generate_report
    @course = Course.find(params[:id])
    @course_report = @course.course_report || CourseReport.new()
    if @course_report.course_schedule.nil?
      @course_report.build_course_schedule
    end
    if @course_report.course_photos.count < 6
      (6 - @course_report.course_photos.count).times do 
        @course_report.course_photos.build
      end
    end
  end

  def create_report
    @course = Course.find(params[:id])   

    # we don't intend to save the file, so let's just get its contents and delete the :file params
    file = params[:course_report][:file]
    if file
      data = file.read
      extension = file.content_type
    end

    params[:course_report].delete(:file)

    @course_report = CourseReport.new(params[:course_report])
    @course_report.course_survey = CourseSurvey.new(title: @course.name)


    respond_to do |format|
      format.html { 
        if extension != 'text/csv' && !extension.blank?
          redirect_to request.referrer, alert: 'Sila muatnaik file CSV dengan format yang betul'
        elsif @course_report.save

          @course_report.course_survey.import_survey_data(data) unless data.nil?

          redirect_to my_reports_consultant_path(current_consultant), notice: "Berjaya menjanakan report untuk kursus #{@course.name}"
        else
          redirect_to generate_report_course_path(@course), notice: "Tidak berjaya mengemaskini report kerana:<br/> #{@course_report.errors.full_messages.join("<br/>")}"
        end
      }
    end
  end

  def  update_report
    @course = Course.find(params[:id])
    @course_report = @course.course_report
    

    file = params[:course_report][:file]
    if file
      data = file.read
      extension = file.content_type
    end

    params[:course_report].delete(:file)
    respond_to do |format|
      format.html { 
        if extension != 'text/csv' && !extension.blank?
          redirect_to request.referrer, alert: 'Sila muatnaik file CSV dengan format yang betul'
        elsif @course_report.update_attributes(params[:course_report])
          @course_report.course_survey.destroy unless @course_report.course_survey.nil?
          @course_report.course_survey.import_survey_data(data) unless data.nil?

          redirect_to my_reports_consultant_path(current_consultant), notice: "Berjaya mengemaskini report untuk kursus #{@course.name}"
        else
          redirect_to generate_report_course_path(@course), notice: "Tidak berjaya mengemaskini report kerana:<br/> #{@course_report.errors.full_messages.join("<br/>")}"
        end
      }
    end
  end

  def view_report
    @course = Course.find(params[:id])
    @course_report = @course.course_report
  end

  def list_reports
    @course_reports = CourseReport.all
  end
  def reports

  end
end
