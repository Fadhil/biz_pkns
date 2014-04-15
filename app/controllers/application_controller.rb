class ApplicationController < ActionController::Base

  #before_filter :authenticate_the_thing
  before_filter :check_status

  protect_from_forgery


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    home_url
  end

  def after_sign_out_path_for(resource)
    if resource == ('consultant'.to_sym)
      new_consultant_session_url
    elsif current_user.try(:admin?)
      admin_login_url
    else
      root_url
    end
  end

  def city_dropdown
    @cities = City.where(state_name: params[:state])
    respond_to do |format|
      format.html { render layout: false }
    end
  end

  def course_dropdown
    @courses = Course.where(program_id: params[:program_id])
    respond_to do |format|
      format.html {render layout: false }
    end
  end

  def current_ability
    if current_user
      @current_ability ||= Ability.new(current_user)
    elsif current_consultant
      @current_ability ||= Ability.new(current_consultant)
    else
      Ability.new(current_user)
    end
  end
  #Temp authentication. Removed this before sign off.
  protected

  def authenticate_the_thing
    authenticate_or_request_with_http_basic do |username, password|
      username == "big" && password == "boss"
    end
  end

  def check_status
    if current_user
      if current_user.walk_in_first_time?
        flash.now[:notice] = t('please_change_default_password')
      elsif current_user.membership.nil? && !current_user.admin?
          flash.now[:notice] = t('please_become_a_member', href: "<a href='#{edit_user_path(current_user)}'>sini</a>")
      elsif current_user.confirmed && !current_user.profile_complete? 
        unless current_user.admin?
          flash.now[:notice] = t('please_complete_your_profile', href: "<a href='#{edit_user_path(current_user)}'>sini</a>")
        end
      elsif !current_user.unfinished_surveys.empty?
        unless current_user.admin?
          flash.now[:notice] = t('you_have_new_surveys_here') + " <a href='#{surveys_user_path(current_user)}'>Jawab Survey</a>"
        end
      end
    end
    if current_consultant
      if !current_consultant.profile_complete?
        flash.now[:notice] = t('consultant_please_complete_profile', href: "<a href='#{edit_consultant_path(current_consultant)}'>sini</a>")
      end
    end
  end
end
