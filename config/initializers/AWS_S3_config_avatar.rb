CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.fog_provider = 'fog/aws'

    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['AKIAJDOUCEXFPLQHLGOA'],
        :aws_secret_access_key => ENV['J3jzxmoj2 / yNMSwxwKp1uOg5e + H6cqD / К + o8mORW'],
        :region                => ENV['US East(N.Virginia)']
    }

    config.storage = :fog
    config.fog_directory = ENV['library1777']
  end
end
