class ProgramsController < ApplicationController
  load_and_authorize_resource
  # GET /programs
  # GET /programs.json
  def index
    @programs = Program.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programs }
    end
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    @program = Program.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program }
    end
  end

  # GET /programs/new
  # GET /programs/new.json
  def new
    @program = Program.new
    @program.build_logo
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program }
    end
  end

  # GET /programs/1/edit
  def edit
    @program = Program.find(params[:id])
    if @program.logo.nil?
      @program.build_logo
    end
    @program.courses.build
    @courses = Course.new
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(params[:program])

    respond_to do |format|
      if @program.save
        format.html { redirect_to @program, notice: t('successfully_registered',resource: t('program')) }
        format.json { render json: @program, status: :created, location: @program }
      else
        format.html { render action: "new" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /programs/1
  # PUT /programs/1.json
  def update
    @program = Program.find(params[:id])

    respond_to do |format|
      if @program.update_attributes(params[:program])
        format.html { redirect_to @program, notice: t('successfully_updated',resource: t('program'))}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :no_content }
    end
  end
end
