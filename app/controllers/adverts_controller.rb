class AdvertsController < ApplicationController
  def index
    @active_adverts = Advert.active
    @inactive_adverts = Advert.inactive
    @pending_adverts = Advert.pending
    @all_adverts = Advert.all
  end

  def show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
    @advert.build_photo
  end

  def create
    @the_params = params[:advert]
    @advert = Advert.new(params[:advert])
    if params[:advert_course_select].present?
      course = Course.find(params[:advert_course_select])
      @the_params = {  title: course.name, 
                  location: course.venue,
                  course_start_date: course.start_date,
                  course_end_date: course.end_date,
                  capacity: course.pax,
                  program_name: course.try(:program).try(:name),
                  course_type: course.course_type}
    end
    

    respond_to do |format|
      if @advert.save && @advert.update_attributes(@the_params)
        
        format.html { redirect_to @advert, notice: t('successfully_created_advert') }
        format.json { head :no_content }
      else
        format.html { render action: "new" }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @advert = Advert.find(params[:id])
    if @advert.photo.nil?
      @advert.build_photo
    end
  end

  def update
    the_params = params[:advert]
    @advert = Advert.find(params[:id])
    if params[:advert_course_select].present?
      course = Course.find(params[:advert_course_select])
      the_params = {  title: course.name, 
                  location: course.venue,
                  course_start_date: course.start_date,
                  course_end_date: course.end_date,
                  capacity: course.pax,
                  program_name: course.try(:program).try(:name),
                  course_type: course.course_type }
    end

    respond_to do |format|
      if @advert.update_attributes(the_params)
        
        format.html { redirect_to @advert, notice: t('successfully_updated_advert') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advert.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @advert = Advert.find(params[:id])
    @advert.destroy

    respond_to do |format|
      format.html { redirect_to adverts_url }
      format.json { head :no_content }
    end
  end

  def activate
    @advert = Advert.find(params[:id])
    respond_to do |format|
      if @advert.update_attributes(params[:advert])
        if !Advert.pending.empty?
          the_notice = t('activated_adverts_full')
        else
          the_notice = t('successfully_activated_advert')
        end
        format.html { redirect_to adverts_path, notice: the_notice }
      end
    end
  end

  def assign_weight
    @advert = Advert.find(params[:id])
    respond_to do |format|
      if @advert.update_attributes(params[:advert])
        format.html { redirect_to adverts_path, notice: t('successfully_activated_advert') }
      end
    end
  end
end
