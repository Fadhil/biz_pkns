class ApplicationController < ActionController::Base
  before_filter :authenticate

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied."
    redirect_to root_url
  end

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

end
