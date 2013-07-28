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
  end

  def create_report
    @course = Course.find(params[:id])
    @course_report = CourseReport.new(params[:course_report])

    respond_to do |format|
      format.html { 
        if @course_report.save
          redirect_to my_reports_consultant_path(current_consultant), notice: "Berjaya menjanakan report untuk kursus #{@course.name}"
        else
          redirect_to generate_report_course_path(@course), notice: "Tidak berjaya menjanakan report"
        end
      }
    end
  end
  def  update_report
    @course = Course.find(params[:id])
    @course_report = @course.course_report
    Rails.logger.info("Params:\n")
    Rails.logger.info(params[:course_report])
    respond_to do |format|
      format.html { 
        if @course_report.update_attributes(params[:course_report])
          redirect_to my_reports_consultant_path(current_consultant), notice: "Berjaya mengemeskini report untuk kursus #{@course.name}"
        else
          redirect_to generate_report_course_path(@course), notice: "Tidak berjaya mengemeaskini report"
        end
      }
    end
  end
  def reports

  end
end
