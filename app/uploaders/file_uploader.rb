# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
   include CarrierWave::MiniMagick
   include Sprockets::Helpers::RailsHelper
   include Sprockets::Helpers::IsolatedHelper


  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  #storage :fog

  # include CarrierWave:MimeTypes
  # process :set_content_type

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
   def default_url
     # For Rails 3.1+ asset pipeline compatibility:
    ([version_name, "default.png"].compact.join('_'))
  
     #"/images/fallback/" + [version_name, "default.png"].compact.join('_')
   end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
   version :thumb, if: :image? do
     process :resize_to_fit => [150, 150]
   end

   version :subcontent, if: :image? do
    process :resize_to_fit => [290,140]
   end

   version :sidebar, if: :image? do
    process :resize_to_fill => [145,80]
   end

  version :micro, if: :image? do
    process :resize_to_fill => [30,30]
   end

protected

    def image?(new_file)
      new_file.content_type.include? 'image'
    end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
