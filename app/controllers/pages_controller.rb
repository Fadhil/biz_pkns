class PagesController < ApplicationController
  def welcome
  end

  def consultation
    @consultants = Consultant.all
  end
end
