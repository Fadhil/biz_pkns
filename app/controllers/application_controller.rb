class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied."
    redirect_to root_url
  end

  def city_dropdown
    @cities = City.where(state_name: params[:state])
    respond_to do |format|
      format.html { render layout: false }
    end
  end
end
