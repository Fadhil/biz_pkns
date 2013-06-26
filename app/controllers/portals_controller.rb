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
end
