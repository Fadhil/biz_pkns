class ConsultantsController < ApplicationController
  load_and_authorize_resource
  # GET /consultants
  # GET /consultants.json
  def index
    @consultants = Consultant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consultants }
    end
  end

  # GET /consultants/1
  # GET /consultants/1.json
  def show
    @consultant = Consultant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consultant }
    end
  end

  # GET /consultants/new
  # GET /consultants/new.json
  def new
    @consultant = Consultant.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @consultant }
    end
  end

  # GET /consultants/1/edit
  def edit
    @consultant = Consultant.find(params[:id])
    #authorize! if can? :manage, Consultant
    if @consultant.profile_photo.nil? 
      @consultant.build_profile_photo
    end
  end

  # POST /consultants
  # POST /consultants.json
  def create
    @consultant = Consultant.new(params[:consultant])
    
    respond_to do |format|
      if @consultant.save
        #Send email here
        ConsultantMailer.signup_notification(@consultant).deliver
        format.html { redirect_to @consultant, notice: t('successfully_registered', resource: t('consultant')) }
        format.json { render json: @consultant, status: :created, location: @consultant }
      else
        format.html { render action: "new" }
        format.json { render json: @consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /consultants/1
  # PUT /consultants/1.json
  def update
    if params[:consultant][:password].blank? && params[:consultant][:password_confirmation].blank?
      params[:consultant].delete(:password)
      params[:consultant].delete(:password_confirmation)
    end
    @consultant = Consultant.find(params[:id])
    respond_to do |format|
      if @consultant.update_attributes(params[:consultant])
        format.html { redirect_to @consultant, notice: t('successfully_updated', resource:t('consultant')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultants/1
  # DELETE /consultants/1.json
  def destroy
    @consultant = Consultant.find(params[:id])
    @consultant.destroy

    respond_to do |format|
      format.html { redirect_to consultants_url }
      format.json { head :no_content }
    end
  end

  def contact
    @consultant = Consultant.find(params[:id])
    @sender = current_user.email
    #authorize! :contact, { unless :current_user }
    #ConsultantMailer.contact(@consultant).deliver
    #format.html { redirect_to @consultant, notice: 'Your message has been sent to respective consultant.' }
  end

  def sent
    @consultant = Consultant.find(params[:id])
    @emailname = params[:consultant][:name]
    @emailsender = params[:consultant][:email]
    @emailsubject = params[:consultant][:subject]
    @emailmessage = params[:consultant][:message]
    respond_to do |format|
      if @consultant.save
        ConsultantMailer.contact(@consultant, @emailname, @emailsender, @emailsubject, @emailmessage).deliver
        format.html { redirect_to consultation_path, notice: 'Emel anda telah dihantar kepada perunding berkenaan.' }
        #contact_consultant_path(consultant)
        format.json { render json: @consultant, status: :created, location: @consultant }
      else
        format.html { render action: "contact" }
        format.json { render json: @consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  def select_program
    if program = Program.find(params[:program_id]) rescue nil
      session[:current_program_id] = program.id
      session[:current_program_name] = program.name

      respond_to do |format|
        format.html { redirect_to request.referrer }
      end
    end
  end
  
end
