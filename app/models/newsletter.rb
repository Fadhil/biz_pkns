class Newsletter < ActiveRecord::Base
  attr_accessible :message, :subject, :consultant_id

  scope :latest, order('created_at DESC')

  belongs_to :consultant
end
