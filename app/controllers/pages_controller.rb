class PagesController < ApplicationController
  def welcome
  end

  def consultation
    @consultants = Consultant.all
  end

  def upcoming_courses
    if params[:search].present?
      if params[:search][:terms].present?
        search_terms = params[:search][:terms].split(' ').join('%')
        @courses = Course.active.upcoming.where('LOWER(name) like ?',"%#{search_terms}%")
      else
        @courses = Course.active.upcoming
      end
    else
      @courses = Course.active.upcoming
    end
  end

  def register_user
    user = User.find(params[:user_id]) rescue nil
    course = Course.find(params[:id]) rescue nil

    if user && course 
      user.courses.push course unless user.courses.include?(course)
      user.save
      redirect_to course_details_path(course), alert: t('successfully_registered_course')
    else
      
      redirect_to course_details_path(course), alert: t('invalid_request')
    end
  end
  
  def upcoming_courses_show
    @course = Course.find(params[:id])
  end

  def business_directory
    @users = User.joins(:business_profile)

    if params[:search].present?

      unless params[:search][:category] == ''
        category = params[:search][:category]
      end
      unless params[:search][:name] == ''
        name = params[:search][:name]
      end
      unless params[:search][:business_name] == ''
        business_name = params[:search][:business_name]
      end

      if name
        name = name.split(' ').join('%')
        @users = @users.joins(:business_profile).where("concat(LOWER(first_name), ' ', LOWER(last_name)) like ?","%#{name}%")
      end
      if category
        @users = @users.joins(:business_profile).where('business_profiles.category = ?',category)
      end
      if business_name
        business_name = business_name.split(' ').join('%')
        @users = @users.joins(:business_profile).where('LOWER(business_profiles.company_name) like ?', "%#{business_name}%")
      end


      # if category && !(state || city)
      #   @users = User.joins(:business_profile).where('business_profiles.category' => category)
      # elsif (state || city) && !category
      #   if !city
      #     @users = User.joins(:business_profile=>{:address=>:city}).where('cities.state_name'=>state)
      #   else
      #     @users = User.joins(:business_profile=>{:address=>:city}).where('cities.id'=>city)
      #   end
      # elsif category && (state || city)
      #   if !city
      #     @users = User.joins(:business_profile=>{:address=>:city}).where('cities.state_name' => state, 'business_profiles.category' => category)
      #   else
      #     @users = User.joins(:business_profile=>{:address=>:city}).where('cities.id' => city, 'business_profiles.category' => category)          
      #   end
      # else
      #   @users = User.all
      # end
    else
      @users = User.joins(:business_profile)
    end
  end
end
