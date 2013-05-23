class ApplicationController < ActionController::Base
  before_filter :authenticate
  before_filter :check_status

  protect_from_forgery


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
    
  def city_dropdown
    @cities = City.where(state_name: params[:state])
    respond_to do |format|
      format.html { render layout: false }
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

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "big" && password == "boss"
    end
  end

  def check_status
    if current_user
      if current_user.walk_in_first_time?
        flash.now[:notice] = t('please_change_default_password')
      elsif current_user.confirmed && !current_user.profile_complete?
        flash.now[:notice] = t('please_complete_your_profile')
      end
    end
  end

end
