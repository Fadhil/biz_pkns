class Attachment < ActiveRecord::Base
  attr_accessible :caption, :category, :title, :file
  belongs_to :attachable, polymorphic: true
  mount_uploader :file, FileUploader
end
