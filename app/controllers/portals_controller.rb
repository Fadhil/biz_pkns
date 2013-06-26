class PortalsController < ApplicationController
  layout 'portal'
  def home
    @adverts = Advert.active
    @blogs = Blog.all(:order => "created_at DESC", :limit => 5)
  end

  def about
  end

  def contact
  end

  def course
    if params[:search].present?
      if params[:search][:terms].present?
        search_terms = params[:search][:terms].split(' ').join('%')
        @courses = Course.active.upcoming.where('LOWER(name) like ?',"%#{search_terms}%").page(params[:page]).order("start_date DESC")
      else
        @courses = Course.active.upcoming.page(params[:page]).order("start_date DESC")
      end
    else
      @courses = Course.active.upcoming.page(params[:page]).order("start_date DESC")
    end
  end

  def course_show
    @course = Course.find(params[:id])
  end
end
