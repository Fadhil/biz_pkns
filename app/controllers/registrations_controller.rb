class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
    @user.build_address
    @user.address.build_city
    
  end

  def create
    @city_id = params[:user_city]
    params[:user][:address_attributes].delete :city_attributes
    @user = User.new(params[:user])
    #@business_profile = @user.build_business_profile
    if @user.save
      @user.set_city(@city_id)
      redirect_to user_path(@user)
    else
      flash[:notice] = "Failed to create user"
      redirect_to new_user_registration_path
    end
 
  end
end