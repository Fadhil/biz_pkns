class Letter < ActiveRecord::Base
  attr_accessible :user_id, :first_name, :last_name, :message, :subject
  attr_accessible :line1, :line2, :postcode, :city, :state
  attr_accessible :address

  has_many :users

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def full_address
    "#{self.line1} #{self.line2} #{self.postcode} #{self.city} #{self.state}"
  end

end