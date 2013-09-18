class PagesController < ApplicationController

  def welcome
    render :layout => 'static'
  end

  def home
    @adverts = Advert.active
  end

  def consultation
    authorize! :consultation, :pages, message: 'Anda perlu menjadi ahli untuk menggunakan perkhidmatan ini.'
    @consultants = Consultant.all
  end

  def upcoming_courses
    if params[:search].present?
      if params[:search][:terms].present?
        search_terms = params[:search][:terms].split(' ').join('%')
        @courses = Course.active.upcoming.where('LOWER(name) like ?',"%#{search_terms}%").order("start_date ASC").page(params[:page])
      else
        @courses = Course.active.upcoming.order("start_date ASC").page(params[:page])
      end
    else
      @courses = Course.active.upcoming.order("start_date ASC").page(params[:page])
    end
  end

  def register_user
    user = User.find(params[:user_id]) rescue nil
    course = Course.find(params[:id]) rescue nil

    if user && course
      unless course.full?
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
                                first_name: user.first_name,
                                last_name: user.last_name,
                                email: user.email,
                                ic_number: user.ic_number)
    unless course.full?
      course.attendance_list.attendees.push attendee
    end
  end

  def upcoming_courses_show
    @course = Course.find(params[:id])    
    if @course.end_date < Date.today
      @course.status = false
      @course.save
    end
  end

  def my_courses
    authorize! :my_courses, :pages, message: 'Anda perlu menjadi ahli untuk menggunakan perkhidmatan ini.'
    @courses = []
    if current_user
      @courses = current_user.courses
    end
  end

  def business_directory
    @users = User.nonadmin.joins(:business_profiles)

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
        @users = @users.joins(:business_profiles).where("concat(LOWER(first_name), ' ', LOWER(last_name)) like ?","%#{name}%")
      end
      if category
        @users = @users.joins(:business_profiles).where('business_profiles.category = ?',category)
      end
      if business_name
        business_name = business_name.split(' ').join('%')
        @users = @users.joins(:business_profiles).where('LOWER(business_profiles.company_name) like ?', "%#{business_name}%")
      end
    else
      @users = User.joins(:business_profiles).uniq
    end
    @users = Kaminari.paginate_array(@users).page(params[:page]).per(6)
  end

  def adview
    @adverts = Advert.all
  end
end
