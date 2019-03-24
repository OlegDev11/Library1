class AvatarUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
   include CarrierWave::MiniMagick
   process resize_to_limit: [600, 600]

  # Choose what kind of storage to use for this uploader:
  #storage :file
  if Rails.env.production?
     storage :fog
  else
     storage :file
  end
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
     "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  # Create different versions of your uploaded files:
   version :thumb do
     process resize_to_fit: [200, 200]
   end

   version :middle do
     process resize_to_fit: [500, 500]
   end

   version :large do
     process resize_to_fit: [900, 900]
   end

   def extension_whitelist
     %w(jpg jpeg gif png webp)
   end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
