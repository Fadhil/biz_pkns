class MembersController < ApplicationController
  #load_and_authorize_resource
  # GET /users
  # GET /users.json
  def index

    @users = User.nonadmin.all
    if params[:search].present?
      if params[:search][:term].blank?
        @users = User.nonadmin.order("id desc")
      else
        search_terms = params[:search][:term].split(' ').join('%')
        @users = User.nonadmin.where("concat(LOWER(first_name), ' ', LOWER(last_name)) like ?","%#{search_terms}%")
      end

      if !params[:search][:state].blank? || !params[:search][:skill].blank?
        if !params[:search][:skill].blank?
          @users = @users.joins(:skills).where('skills.id' => params[:search][:skill])
        else
          @users = @users.joins({:address=>:city}).where('cities.state_name'=>params[:search][:state])
        end
      end
    end
    

  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    if @user.business_profile.nil?
      @user.build_business_profile
      @user.business_profile.build_business_logo
      @user.business_profile.build_business_photo
      @user.business_profile.build_address


    end
    if @user.profile_photo.nil?
      @user.build_profile_photo
    end

    if @user.previous_courses.empty?
      @user.previous_courses.build
    end

  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    #@business_profile = @user.build_business_profile

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def program_member_list
    @users = current_consultant.users
    if params[:search].present?
      if params[:search][:term].blank?
        @users = User.order("id desc")
      else
        search_terms = params[:search][:term].split(' ').join('%')
        @users = User.where("concat(LOWER(first_name), ' ', LOWER(last_name)) like ?","%#{search_terms}%")
      end

      if !params[:search][:state].blank? || !params[:search][:skill].blank?
        if !params[:search][:skill].blank?
          @users = @users.joins(:skills).where('skills.id' => params[:search][:skill])
        else
          @users = @users.joins({:address=>:city}).where('cities.state_name'=>params[:search][:state])
        end
      end
    end
  end

  def update_attendance
    user = User.find(params[:user_id]) rescue nil 
    attendance = Attendee.find(params[:attendee_id]) rescue nil
    course = Course.find(params[:course_id]) rescue nil
    attended = params[:attended]

    attendance.attended = attended

    if attended
      puts 'inside here fucer'
      user.make_member
    end

    if user.save && attendance.save
      respond_to do |format|
        format.html do
          @course = course
          flash[:notice] = t('successfully_updated_attendance')
          redirect_to request.referrer
          #render action: '../pages/upcoming_courses_show'
        end
      end
    end

  end

end
