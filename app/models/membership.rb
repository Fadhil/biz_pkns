class Membership < ActiveRecord::Base
  attr_accessible :member_number, :user_id, :category
  #belongs_to :user

  after_initialize :set_default_category

  def set_default_category
    self.category = 'silver'
    
  end
end 
