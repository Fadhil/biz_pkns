class Blog < ActiveRecord::Base
  attr_accessible :content, :title, :slug, :tag_list
  acts_as_taggable
  #acts_as_taggable_on :content, :title

  extend FriendlyId
  friendly_id :title, use: :slugged
end
