class AdvertsController < ApplicationController
  load_and_authorize_resource
  def index
    @active_adverts = Advert.active
    @inactive_adverts = Advert.inactive
    @pending_adverts = Advert.pending
    @all_adverts = Advert.all
    @advert_transactions = AdvertTransaction.all

    if !can? :manage, :all?
      respond_to do |format|
        if current_user
          format.html {redirect_to my_adverts_user_path(current_user) }
        elsif current_consultant
          format.html {redirect_to my_adverts_consultant_path(current_consultant)}
        end
      end
    end
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
                  course_type: course.course_type,
                  photo_attributes: params[:advert][:photo_attributes]}
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

  def make_request
    @advert = Advert.find(params[:id])
    respond_to do |format|
      if @advert.update_attributes(params[:advert])
        AdvertTransaction.create(advert_id: @advert.id, title: @advert.title, advert_action: params[:advert_action])
        if params[:advert_action] == 'reject'
          the_notice = t('successfully_rejected_advert')
        elsif params[:advert_action] == 'approve'
          the_notice = t('successfully_activated_advert') 
        elsif params[:advert_action] == 'request'
          the_notice = t('successfully_requested_advert')
        end
        format.html { redirect_to @advert, notice: the_notice}

      end
    end
  end
end
