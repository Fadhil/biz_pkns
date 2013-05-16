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
        @courses = Course.active.upcoming.where('LOWER(name) like ?',"%#{search_terms}%").page(params[:page])
      else
        @courses = Course.active.upcoming.page(params[:page])
      end
    else
      @courses = Course.active.upcoming.page(params[:page])
    end
  end

  def register_user
    user = User.find(params[:user_id]) rescue nil
    course = Course.find(params[:id]) rescue nil

    if user && course 
      if course.attendance_list.attendees.count < course.attendance_list.max_attendees
        user.courses.push course unless user.courses.include?(course)
        user.save
        update_attendance_list(course, user)
        redirect_to course_details_path(course), alert: t('successfully_registered_course')
      else
        redirect_to course_details_path(course), alert: t('course_is_full')
      end

    else
      
      redirect_to course_details_path(course), alert: t('invalid_request')
    end
  end

  def update_attendance_list(course,user)
    attendee = Attendee.create( user_id: user.id, 
                                name: user.full_name, 
                                email: user.email, 
                                ic_number: user.ic_number)
    if course.attendance_list.attendees.count < course.attendance_list.max_attendees
      course.attendance_list.attendees.push attendee
    end
  end 
  
  def upcoming_courses_show
    @course = Course.find(params[:id])
    
  end

  def my_courses
    authorize! :all, :pages
    @courses = []
    if current_user
      @courses = current_user.courses
    end

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
    else
      @users = User.joins(:business_profile)
    end
  end
end
