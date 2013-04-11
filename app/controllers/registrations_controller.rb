class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    #@business_profile = @user.build_business_profile
    if @user.save
      flash[:notice] = t('confirmation_sent', email: @user.email)
      redirect_to after_sign_up_path_for(@user)
    else
      flash[:notice] = "Failed to create user"
      redirect_to new_user_registration_path
    end
 
  end


  def after_sign_up_path_for(resource_or_scope)
    puts 'here fadhil is in'
    if resource_or_scope.is_a?(User)
      root_path
    else
      super
    end
  end

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(User)
      user_path(:id => resource_or_scope.id)
    else
      super
    end
  end
end