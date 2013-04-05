class PagesController < ApplicationController
  def welcome
  end

  def consultation
    @consultants = Consultant.all
  end

  def business_directory
    if params[:search].present?
      unless params[:search][:state] == ''
        state = params[:search][:state] 
      end
      unless params[:search][:category] == ''
        category = params[:search][:category]
      end
      if category && !state
        @users = User.joins(:business_profile).where('business_profiles.category' => category)
      elsif state && !category
        @users = User.joins(:business_profile=>:address).where('addresses.state' => state)
      elsif category && state
        @users = User.joins(:business_profile=>:address).where('addresses.state' => state, 'business_profiles.category' => category)
      end
    else
      @users = User.joins(:business_profile)
    end
  end
end
