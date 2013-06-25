class Blog < ActiveRecord::Base
  attr_accessible :content, :title, :slug

  extend FriendlyId
  friendly_id :title, use: :slugged
end
