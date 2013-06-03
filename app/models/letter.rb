class Letter < ActiveRecord::Base
  attr_accessible :user_id, :first_name, :last_name, :message, :subject
  attr_accessible :line1, :line2, :postcode
  attr_accessible :address

  has_many :users

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end