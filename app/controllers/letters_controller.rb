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

  def generate_letter
    the_notice=t('successfully_sent_letter')
 
    @users = []
   
    @letter = Letter.find(params[:id])
    if params[:letter_user_select].present?
      case params[:letter_user_select]
      when 'all_users'
        @users = User.nonadmin.has_address
      when 'members'
        @users = User.nonadmin.members.has_address
      when 'nonmembers'
        @users = User.nonadmin.nonmembers.has_address
      when 'users_by_program'
        if params[:letter_program_select].present?
          the_program = Program.find(params[:letter_program_select])
          @users = the_program.users
        end
      when 'users_by_course'
        if params[:letter_course_select].present?
          the_course = Course.find(params[:letter_course_select])
          @users = the_course.users
        end
      else
        @users = User.nonadmin.has_address
      end
    end


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @letter }
      format.pdf do
        #pdf = Prawn::Document.new
        pdf = LetterPdf.new(@letter, current_user, @users)
        send_data pdf.render, filename: "surat_#{@letter.subject}".downcase.gsub(' ', '_'),
                                type: "application/pdf",
                                disposition: "inline"
      end
    end
  end

  # GET /letters/new
  # GET /letters/new.json
  def new
    @letter = Letter.new(params[:letter])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @letter }
    end
  end

  # GET /letters/1/edit
  def edit
    #@user = User.find(params[:id])
    @letter = Letter.find(params[:id])
  end

  # POST /letters
  # POST /letters.json
  def create
    @letter = Letter.new(params[:letter])

    city_id = params[:user_city]

    respond_to do |format|
      if @letter.save
        format.html { redirect_to preview_letter_path(@letter), notice: 'Surat berjaya dicipta.' }
        format.json { render json: @letter, status: :created, location: @letter }
      else
        flash[:alert] = 'Perkara Diperlukan' 
        format.html { render 'new' }
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
        format.html { redirect_to preview_letter_path(@letter), notice: 'Surat berjaya dikemaskini.' }
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

  def history
    @letters = Letter.order("created_at DESC").all
    #@newsletters_templates = Newsletters::Template.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def send_letter
    the_notice=t('successfully_sent_letter')
    users = []
    @letter = Letter.find(params[:id])
    if params[:letter_user_select].present?
      case params[:letter_user_select]
      when 'all_users'
        users = User.nonadmin
      when 'members'
        users = User.nonadmin.members
      when 'nonmembers'
        users = User.nonadmin.nonmembers
      when 'users_by_program'
        if params[:letter_program_select].present?
          the_program = Program.find(params[:letter_program_select])
          users = the_program.users
        end
      when 'users_by_course'
        if params[:letter_course_select].present?
          the_course = Course.find(params[:letter_course_select])
          users = the_course.users
        end
      else
        users = User.nonadmin
      end
    end
    if !users.empty?
      users.uniq.each do |user|
        #@newsletter.users << user unless @newsletter.users.include?(user)
        #NewsletterMailer.mailer_newsletter(user, @emailsubject, @emailmessage).deliver
        #-NewsletterMailer.delay(:run_at => 3.minutes.from_now).mailer_newsletter(user, @emailsubject, @emailmessage)
      end
    end
    respond_to do |format|
      format.html { redirect_to generate_letter_path(@letter, users: users), notice: the_notice, users: users}
    end
  end

  def list
    @adverts = Advert.active
    @letters = Letter.order("created_at DESC")
    #@newsletters_templates = Newsletters::Template.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def preview
    @letter = Letter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @letter }
    end
  end
end
