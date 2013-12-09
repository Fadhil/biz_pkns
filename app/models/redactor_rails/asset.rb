class RedactorRails::Asset < ActiveRecord::Base
  include RedactorRails::Orm::ActiveRecord::AssetBase
  delegate :url, :current_path, :size, :content_type, :filename, :to => :data

  belongs_to :assetable, polymorphic: true
  validates_presence_of :data
end
