class NewslettersController < ApplicationController
  # GET /newsletters
  # GET /newsletters.json
  def index
    if current_consultant
      @newsletters = current_consultant.newsletters.latest
    else
      @newsletters = Newsletter.latest
    end
    @newsletters_templates = Newsletters::Template.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newsletters }
    end
  end

  # GET /newsletters/1
  # GET /newsletters/1.json
  def show
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsletter }
    end
  end

  # GET /newsletters/new
  # GET /newsletters/new.json
  def new


    @newsletter = Newsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsletter }
    end
  end

  # GET /newsletters/1/edit
  def edit
    if current_consultant
      sign_in(:user, User.find_by_email('admin@admin.com'))
    end
    @newsletter = Newsletter.find(params[:id])
  end

  # POST /newsletters
  # POST /newsletters.json
  def create
    if current_consultant
      sign_out(:user)
    end

    @newsletter = Newsletter.new(params[:newsletter])
    @emailsubject = params[:newsletter][:subject]
    @emailmessage = params[:newsletter][:message]

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to preview_newsletter_path(@newsletter) }
        format.json { render json: @newsletter, status: :created, location: @newsletter }
      else
        flash[:notice] = "Subjek diperlukan"
        format.html { render action: "use_template" }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newsletters/1
  # PUT /newsletters/1.json
  def update
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      if @newsletter.update_attributes(params[:newsletter])
        format.html { redirect_to preview_newsletter_path(@newsletter), notice: 'Buletin berjaya dikemas kini.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit", locals:{  newsletter: @newsletter }}
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json
  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy

    respond_to do |format|
      format.html { redirect_to newsletters_url }
      format.json { head :no_content }
    end
  end

  def history
    
    if current_consultant
      @newsletters = current_consultant.newsletters.latest
    else
      @newsletters = Newsletter.latest
    end
    #@newsletters_templates = Newsletters::Template.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def send_newsletter
     the_notice=t('successfully_sent_newsletter')
    users = []
    @newsletter = Newsletter.find(params[:id])
    if params[:newsletter_user_select].present?
      case params[:newsletter_user_select]
      when 'all_users'
        users = User.nonadmin
      when 'members'
        users = User.nonadmin.members
      when 'nonmembers'
        users = User.nonadmin.nonmembers
      when 'users_by_program'
        if params[:newsletter_program_select].present?
          the_program = Program.find(params[:newsletter_program_select])
          users = the_program.users
        end
      when 'users_by_course'
        if params[:newsletter_course_select].present?
          the_course = Course.find(params[:newsletter_course_select])
          users = the_course.users
        end
      else
        users = User.nonadmin
      end
    end
    if !users.empty?
      users.uniq.each do |user|
        NewsletterMailer.delay(:run_at => 3.minutes.from_now ).mailer_newsletter(user, @newsletter.subject, @newsletter.message)
        @newsletter.sent = true
        @newsletter.save
      end
    end
    respond_to do |format|
      format.html { redirect_to @newsletter, notice: the_notice }
    end
  end

  def use_template
    if current_consultant
      sign_in(:user, User.find_by_email('admin@admin.com'))
      #@newsletter = Newsletter.find(params[:id])
    end
    @newsletters_template = Newsletters::Template.find(params[:id])
    @newsletter = Newsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsletter }
    end
  end

  def preview
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsletter }
    end
  end
end
