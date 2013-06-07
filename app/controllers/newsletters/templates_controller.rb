class Newsletters::TemplatesController < ApplicationController
  # GET /newsletters/templates
  # GET /newsletters/templates.json
  def index
    @newsletters_templates = Newsletters::Template.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @newsletters_templates }
    end
  end

  # GET /newsletters/templates/1
  # GET /newsletters/templates/1.json
  def show
    @newsletters_template = Newsletters::Template.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @newsletters_template }
    end
  end

  # GET /newsletters/templates/new
  # GET /newsletters/templates/new.json
  def new
    @newsletters_template = Newsletters::Template.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsletters_template }
    end
  end

  # GET /newsletters/templates/1/edit
  def edit
    @newsletters_template = Newsletters::Template.find(params[:id])
  end

  # POST /newsletters/templates
  # POST /newsletters/templates.json
  def create
    @newsletters_template = Newsletters::Template.new(params[:newsletters_template])

    respond_to do |format|
      if @newsletters_template.save
        format.html { redirect_to @newsletters_template, notice: 'Template was successfully created.' }
        format.json { render json: @newsletters_template, status: :created, location: @newsletters_template }
      else
        format.html { render action: "new" }
        format.json { render json: @newsletters_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /newsletters/templates/1
  # PUT /newsletters/templates/1.json
  def update
    @newsletters_template = Newsletters::Template.find(params[:id])

    respond_to do |format|
      if @newsletters_template.update_attributes(params[:newsletters_template])
        format.html { redirect_to @newsletters_template, notice: 'Template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @newsletters_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletters/templates/1
  # DELETE /newsletters/templates/1.json
  def destroy
    @newsletters_template = Newsletters::Template.find(params[:id])
    @newsletters_template.destroy

    respond_to do |format|
      format.html { redirect_to newsletters_templates_url }
      format.json { head :no_content }
    end
  end
end
