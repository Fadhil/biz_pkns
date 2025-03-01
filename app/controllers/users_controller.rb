class UsersController < ApplicationController
  load_and_authorize_resource
  # GET /users
  # GET /users.json
  def index
    @users = User.nonadmin.order('users.created_at desc')
    if params[:search].present?
      if params[:search][:name].blank?
        @users = User.nonadmin.order("users.id desc").order('users.created_at desc')
      elsif params[:search][:name].present?
        search_terms = params[:search][:name].split(' ').join('%')
        @users = User.nonadmin.where("concat(LOWER(first_name), ' ', LOWER(last_name)) like ?","%#{search_terms}%").order('users.created_at desc')
      end

      if params[:search][:ic].present?
        @users = @users.where(ic_number: params[:search][:ic])
      end
    end
    if params[:filter].present?
      @users = @users.send(params[:filter])
    end
    @klass = Class
    @users = Kaminari.paginate_array(@users).page(params[:page]).per(6)
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
    @educations_list = Education.all.map{ |a| [a.name,a.id]}.sort.select{ |x| x[0].downcase.strip != 'lain-lain'}
    @skills_list = Skill.all.map{ |a| [a.name,a.id]}.sort.select{ |x| x[0].downcase.strip != 'lain-lain'}
    @business_categories_list = BusinessCategory.order(:name).map{|a| [a.name,a.name]}.sort.select{ |x| x[0].downcase.strip != 'lain-lain'}
    #Add lain lain last
    if Education.all.map(&:name).include?('Lain-lain')
      others = Education.where(name: 'Lain-lain').first
      @educations_list << [ others.name, others.id ]
    end
    if Skill.all.map(&:name).include?('Lain-lain')
      others = Skill.where(name: 'Lain-lain').first
      @skills_list << [ others.name, others.id ]
    end
    if BusinessCategory.all.map(&:name).include?('Lain-lain')
      others = BusinessCategory.where(name: 'Lain-lain').first
      @business_categories_list << [ others.name, others.id ]
    end
    if @user.address.nil?
      @user.build_address
    end

    if @user.address.city.nil?
      @user.address.build_city
    end
    
    if @user.business_profiles.count < 3
      repetitions = 3 - @user.business_profiles.count
      repetitions.times do |n|
        @user.business_profiles.build
        @user.business_profiles[n].build_business_logo
        @user.business_profiles[n].build_business_photo
      end

    end

    @user.business_profiles.each do |bp|
      if bp.business_logo.nil?
        bp.build_business_logo
      end 
      if bp.business_photo.nil?
        bp.build_business_photo
      end
    end


    if @user.profile_photo.nil?
      @user.build_profile_photo
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
    @user = User.new(params[:user])

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

          @user.set_city(city_id) unless city_id.blank?
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

  def letters
    @user = User.find(params[:id])
    @letters = Letter.where(:user_id => @user.id)
  end

  def my_adverts
    if current_user
      @my_adverts = current_user.adverts.latest
    end
  end

  def inactive
    @users = User.nonmembers
    @users = Kaminari.paginate_array(@users).page(params[:page]).per(200)
  end
end
