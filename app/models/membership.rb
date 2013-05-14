class Membership < ActiveRecord::Base
  attr_accessible :member_number, :user_id
  #belongs_to :user
end
