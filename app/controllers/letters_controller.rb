class LettersController < ApplicationController
  # GET /letters
  # GET /letters.json
  def index
    @letters = User.all
    if params[:search].present?
      if params[:search][:term].blank?
        
      else
        search_terms = params[:search][:term].split(' ').join('%')
        @letters = User.where("concat(LOWER(first_name), ' ', LOWER(last_name)) like ?","%#{search_terms}%")
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @letters }
    end
  end

  # GET /letters/1
  # GET /letters/1.json
  def show
    @letter = Letter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @letter }
      format.pdf do
      #pdf = Prawn::Document.new
      pdf = LetterPdf.new(@letter, current_user)
      send_data pdf.render, filename: "surat_#{@letter.full_name}".downcase.gsub(' ', '_'),
                              type: "application/pdf",
                              disposition: "inline"
    end
    end
  end

  # GET /letters/new
  # GET /letters/new.json
  def new
    @letter = Letter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @letter }
    end
  end

  # GET /letters/1/edit
  def edit
    @user = User.find(params[:id])
    @letter = Letter.find(params[:id])
  end

  # POST /letters
  # POST /letters.json
  def create
    @letter = Letter.new(params[:letter])

    city_id = params[:user_city]

    respond_to do |format|
      if @letter.save
        format.html { redirect_to @letter, notice: 'Letter was successfully created.' }
        format.json { render json: @letter, status: :created, location: @letter }
      else
        format.html { render action: "new" }
        format.json { render json: @letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /letters/1
  # PUT /letters/1.json
  def update
    @letter = Letter.find(params[:id])

    respond_to do |format|
      if @letter.update_attributes(params[:letter])
        format.html { redirect_to @letter, notice: 'Letter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /letters/1
  # DELETE /letters/1.json
  def destroy
    @letter = Letter.find(params[:id])
    @letter.destroy

    respond_to do |format|
      format.html { redirect_to letters_url }
      format.json { head :no_content }
    end
  end

  def compose
    @user = User.find(params[:id])
    #@sender = current_user.email
    @letter = Letter.create(params[:letter])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @letter }
    end
    #authorize! :contact, { unless :current_user }
    #ConsultantMailer.contact(@consultant).deliver
    #format.html { redirect_to @consultant, notice: 'Your message has been sent to respective consultant.' }
  end
end
