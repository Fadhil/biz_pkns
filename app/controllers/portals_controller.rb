class PortalsController < ApplicationController
  layout 'portal'
  before_filter :get_news
  def home
    @adverts = Advert.active
    @blogs = Blog.all(:order => "created_at DESC", :limit => 5)
  end

  def about
  end

  def contact
    @message = Message.new
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

  def faq

  end

  def member_page
    @members = User.random_businessmen(8)
  end

  def get_news
    @news = Blog.where(category: 'Berita').order('created_at desc').limit(5)
  end
end
