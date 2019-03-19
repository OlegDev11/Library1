if Rails.env.development? or Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :file
    config.root = "#{Rails.root}/tmp"
    config.cache_dir = "#{Rails.root}/tmp/uploads"
  end
else
  CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
      :region => ENV['AWS_S3_REGION']
    }
    config.fog_directory = ENV['AWS_S3_BUCKET_NAME']
    config.asset_host = "#{ENV['AWS_S3_ASSET_URL']}/#{ENV['AWS_S3_BUCKET_NAME']}"
    config.storage = :fog
  end
end
