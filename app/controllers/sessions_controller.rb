class SessionsController < Devise::SessionsController

  # GET /admin/login 
  def new_admin
    self.resource = build_resource(nil, :unsafe => true)
    clean_up_passwords(resource)
    respond_with(resource, serialize_options(resource))
  end
    
  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)

    sign_in(resource_name, resource)
    if params[:admin_login]
      if resource.class == User
        if !resource.admin?
          sign_out(resource_name)
          #set_flash_message(:notice, :not_admin)
          flash[:notice] = "Hanya Pengurus dibenarkan daftar masuk dari sini. Sila ke <a href='/users/login' color:'red;'>#{root_url}users/login</a> untuk daftar masuk sebagai pengguna."
          redirect_to '/admin/login'
        else
          set_flash_message(:notice, :signed_in) if is_navigational_format?
          respond_with resource, :location => after_sign_in_path_for(resource)
        end
      else
        set_flash_message(:notice, :signed_in) if is_navigational_format?
        respond_with resource, :location => after_sign_in_path_for(resource)
      end
    else
      if resource.class == User
        if resource.admin?
          sign_out(resource_name)
          #set_flash_message(:notice, :not_admin)
          flash[:notice] = "Hanya Ahli biasa dibenarkan daftar masuk dari sini. Sila ke <a href='/admin/login' color:'red;'>#{root_url}admin/login</a> untuk daftar masuk sebagai pengurus."
          redirect_to '/admin/login'
        else
          set_flash_message(:notice, :signed_in) if is_navigational_format?
          respond_with resource, :location => after_sign_in_path_for(resource)
        end
      else
        set_flash_message(:notice, :signed_in) if is_navigational_format?
        respond_with resource, :location => after_sign_in_path_for(resource)
      end
    end
  end
end
