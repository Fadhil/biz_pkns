class Letter < ActiveRecord::Base
  attr_accessible :user_id, :first_name, :last_name, :message, :subject
  attr_accessible :line1, :line2, :postcode, :city, :state
  attr_accessible :address

  has_many :users

  def full_name
    if self.first_name.blank?
      "#{self.last_name}"
    elsif self.last_name.blank?
      "#{self.first_name}"
    elsif self.first_name.blank? && self.last_name.blank?
      "NIL"
    else
      "#{self.first_name} #{self.last_name}"
    end
  end

  def full_address
    "#{self.line1} #{self.line2} #{self.postcode} #{self.city} #{self.state}"
  end

  def date
    created_at.strftime("%d %b %Y")
  end

  def sender_name(user)
    user.full_name
  end
end