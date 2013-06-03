class UsersController < ApplicationController
  load_and_authorize_resource
  # GET /users
  # GET /users.json
  def index
    if params[:filter].present?
      @users = User.nonadmin.send(params[:filter])
    else
      @users = User.nonadmin
    end
    @klass = Class
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.has_role?('Admin')
        format.html { render 'admin_show'}
      else
        format.html # show.html.erb
      end
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
    if @user.address.nil?
      @user.build_address
    end

    if @user.address.city.nil?
      @user.address.build_city
    end
    
    if @user.business_profiles.empty?
      3.times do |n|
        @user.business_profiles.build
        @user.business_profiles[n].build_business_logo
        @user.business_profiles[n].build_business_photo
      end

    end
    # if @user.business_profile.address.nil?
    #   @user.business_profile.build_address
    # end
    # if @user.business_profile.address.city.nil?
    #   @user.business_profile.address.build_city
    # end

    if @user.profile_photo.nil?
      @user.build_profile_photo
    end

    if @user.previous_courses.empty?
      @user.previous_courses.build
    end

    respond_to do |format|
      if @user.has_role?('Admin')
        format.html { render 'admin_edit'}
      else
        format.html # edit.html.erb
      end
      format.json { render json: @user }
    end
  end

  # POST /users
  # POST /users.json
  def create
    city_id = params[:user_city]
    @user = User.new(params[:user].delete(:city_attributes))
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
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password_confirmation].blank?
    params[:user][:walk_in_first_time] = false
    @user = User.find(params[:id])
    city_id = params[:user_city]
    #business_city_id = params[:businessprofile_city]
    if params[:user][:address_attributes]
      params[:user][:address_attributes].delete :city_attributes
    end
    program = Program.find(params[:program_id]) rescue nil

    respond_to do |format|
      if @user.update_attributes(params[:user])

        # @user.set_city(city_id) unless city_id.blank?
        # @user.business_profile.set_city(business_city_id) unless business_city_id.blank?

        unless @user.has_role?('Admin')
          previous_course = @user.previous_courses.last
          unless previous_course.nil?
            previous_course.program = program unless program.nil?
            previous_course.save
          end
        end

        @user.save
        unless current_user.admin?
          sign_in @user, :bypass => true
        end
        format.html { redirect_to @user, notice: I18n.t('successfully_updated', resource: t('profile'))  }
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
      format.html { redirect_to request.referrer }
      format.json { head :no_content }
    end
  end

  def make_member
    @user = User.find(params[:id])
    @user.make_member

    respond_to do |format|
        format.html { redirect_to request.referrer }
    end
  end

  def update_membership
    @user = User.find(params[:id])
    @user.membership.category = params[:membership][:category]
    if @user.membership.save && @user.save
      respond_to do |format|
          format.html { redirect_to request.referrer, notice: I18n.t('successfully_updated', resource: t('profile')) }
      end
    end
  end 

  def surveys
    @user = User.find(params[:id])
    @surveys = @user.unfinished_surveys
  end
end
