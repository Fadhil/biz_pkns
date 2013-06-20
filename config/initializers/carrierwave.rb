CarrierWave.configure do |config|
  config.storage = Rails.env.production? ? :fog : :file
end
