class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    #@business_profile = @user.build_business_profile
    if @user.save
      redirect_to user_path(@user)
    else
      flash[:notice] = "Failed to create user"
      redirect_to new_user_registration_path
    end
 
  end
end