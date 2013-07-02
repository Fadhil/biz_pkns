class PknsUsersController < UsersController
  def index

    @users = PknsUser.all
    @users = Kaminari.paginate_array(@users).page(params[:page]).per(6)
  end 

  def new
    @pkns_user = PknsUser.new
  end

  def edit
    @pkns_user = PknsUser.find(params[:id])
  end


  def create
    respond_to do |format|
      if @pkns_user.save
        format.html { redirect_to @pkns_user, notice: t('successfully_registered_pkns_user')}
        format.json { render json: @pkns_user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @pkns_user.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    params[:pkns_user].delete(:password) if params[:pkns_user][:password].blank?
    params[:pkns_user].delete(:password_confirmation) if params[:pkns_user][:password_confirmation].blank?
    @pkns_user = PknsUser.find(params[:id])

    respond_to do |format|
      if @pkns_user.update_attributes(params[:pkns_user])

        @pkns_user.save
        unless current_user.admin?
          sign_in @pkns_user, :bypass => true
        end
        format.html { redirect_to @pkns_user, notice: I18n.t('successfully_updated', resource: t('profile'))  }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pkns_user.errors, status: :unprocessable_entity }
      end
    end
  end
end
