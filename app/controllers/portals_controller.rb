class PortalsController < ApplicationController
  layout 'portal'
  def home
    @adverts = Advert.active
  end

  def about
  end

  def contact
  end
end
