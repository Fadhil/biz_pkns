# encoding: utf-8
class RedactorRailsPictureUploader < FileUploader #CarrierWave::Uploader::Base
  include RedactorRails::Backend::CarrierWave

  # Include RMagick or ImageScience support:
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :read_dimensions

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fill => [118, 100]
  end

  version :content do
    process :resize_to_limit => [800, 800]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    RedactorRails.image_file_types
  end


end
