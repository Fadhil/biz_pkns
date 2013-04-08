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
      unless params[:search][:city] == ''
        city = params[:search][:city]
      end
      if category && !state
        @users = User.joins(:business_profile).where('business_profiles.category' => category)
      elsif (state || city) && !category
        if !city
          @users = User.joins(:business_profile=>{:address=>:city}).where('cities.state_name'=>state)
        else
          @users = User.joins(:business_profile=>{:address=>:city}).where('cities.id'=>city)
        end
      elsif category && state
        @users = User.joins(:business_profile=>{:address=>:city}).where('cities.state_name' => state, 'business_profiles.category' => category)
      else
        @users = User.all
      end
    else
      @users = User.joins(:business_profile)
    end
  end
end
