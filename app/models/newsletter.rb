class Newsletter < ActiveRecord::Base
  attr_accessible :message, :subject

  scope :latest, order('created_at DESC')
end
