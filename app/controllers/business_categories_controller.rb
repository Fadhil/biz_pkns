class BusinessCategoriesController < ApplicationController
  def index
    @business_categories = BusinessCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_category }
    end
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @business_category = BusinessCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_category }
    end
  end

  # GET /businesses/new
  # GET /businesses/new.json
  def new
    @business_category = BusinessCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_category }
    end
  end

  # GET /businesses/1/edit
  def edit
    @business_category = BusinessCategory.find(params[:id])
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business_category = BusinessCategory.new(params[:business_category])

    respond_to do |format|
      if @business_category.save
        format.html { redirect_to @business_category, notice: t('successfully_created_business_category') }
        format.json { render json: @business_category, status: :created, location: @business_category }
      else
        format.html { render action: "new" }
        format.json { render json: @business_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /businesses/1
  # PUT /businesses/1.json
  def update
    @business_category = BusinessCategory.find(params[:id])

    respond_to do |format|
      if @business_category.update_attributes(params[:business_category])
        format.html { redirect_to @business_category, notice: t('successfully_updated_business_category')}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business_category = BusinessCategory.find(params[:id])
    @business_category.destroy

    respond_to do |format|
      format.html { redirect_to businesses_url }
      format.json { head :no_content }
    end
  end
end
