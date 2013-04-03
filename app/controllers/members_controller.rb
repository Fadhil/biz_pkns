class MembersController < ApplicationController
  # GET /users
  # GET /users.json
  def index


    if params[:search].present?
      q = params[:search].split(" ").join("%")
      @users = User.where("first_name LIKE ? or last_name LIKE ? or city LIKE ? or state LIKE ? or concat(last_name, ', ', first_name, ', ', city, ', ', state) LIKE ?", "%#{q}%", "%#{q}%" , "%#{q}%", "%#{q}%" , "%#{q}%")
    else
      @users = User.order("id desc")
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
end
