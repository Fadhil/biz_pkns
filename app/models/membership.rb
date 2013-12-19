class Membership < ActiveRecord::Base
  attr_accessible :member_number, :user_id, :category

  after_create :set_default_category

  def set_default_category
    self.category = 'silver'
    
  end
end 
