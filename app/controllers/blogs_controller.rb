class BlogsController < ApplicationController
  #load_and_authorize_resource
  before_filter :get_news
  # GET /blogs
  # GET /blogs.json
  def index    
    @blogs = Blog.order('created_at desc').send(params[:filter] || 'all')
    
    respond_to do |format|
      format.html { render :layout => 'portal' }# index.html.erb
      format.json { render json: @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find(params[:id])

    respond_to do |format|
      format.html { render :layout => 'portal' }# show.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blogs/new
  # GET /blogs/new.json
  def new
    @blog = Blog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blogs/1/edit
  def edit
    @blog = Blog.find(params[:id])
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render json: @blog, status: :created, location: @blog }
      else
        format.html { render action: "new" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogs/1
  # PUT /blogs/1.json
  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.json { head :no_content }
    end
  end

  def all

    if params[:tag]
      @blogs = Blog.order("created_at DESC").tagged_with(params[:tag])
    else
      @blogs = Blog.order("created_at DESC").send(params[:filter] || 'all')
    end
    
    respond_to do |format|
      format.html {render :layout => 'portal'} # index.html.erb
      format.json { render json: @blogs }
    end
  end

  private

  def get_news
    @news = Blog.where(category: 'Berita')
  end
end
