# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base


   include CarrierWave::MiniMagick
   include Sprockets::Helpers::RailsHelper
   include Sprockets::Helpers::IsolatedHelper


  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
   def default_url
     # For Rails 3.1+ asset pipeline compatibility:
    ([version_name, "default.png"].compact.join('_'))
  
     #"/images/fallback/" + [version_name, "default.png"].compact.join('_')
   end
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
end
