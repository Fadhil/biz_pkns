CarrierWave.configure do |config|
  if Rails.env == 'production'
    config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAJNHIISHPT6R4MCKA',                        # required
      :aws_secret_access_key  => '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',                        # required
      # :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
      # :host                   => 's3.example.com',             # optional, defaults to nil
      # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory  = 'pknsbizclub'                     # required
    config.fog_public     = false                                   # optional, defaults to true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end

  config.storage = ( Rails.env == 'production' ) ? :fog : :file 
end
