class AdvertTransaction < ActiveRecord::Base
  attr_accessible :advert_action, :advert_id, :title
  scope :latest, order('created_at DESC')
end
