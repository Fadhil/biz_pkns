class Blog < ActiveRecord::Base
  attr_accessible :content, :title, :category, :slug, :tag_list
  acts_as_taggable
  #acts_as_taggable_on :content, :title

  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :general, conditions: {category: "Umum"}
  scope :news, conditions: {category: "Berita"}
  scope :entrepreneurship, conditions: {category: "Keusahawanan"}
  scope :marketing, conditions: {category: "Pemasaran"}

  #["Umum","Umum"],["Berita","Berita"],["Keusahawanan","Keusahawanan"],["Pemasaran","Pemasaran"]
end
