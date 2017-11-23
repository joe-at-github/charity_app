class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # To process the default image to be a different size
  # process resize_to_fit: [50, 50]

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fit: [50, 50]
  end

  # Attempt to set a default image url 
  # def default_url(params)
  #   params[:image] = "/fallback/thumb_supplier_logo.png"
  # end

  # Attemp to set a default image upload
  # def set_default_image!(profile)
  #   path = File.join(Rails.root, 'app/assets/images/fallback', "thumb_supplier_logo.png")
  #   File.open(path) do |f|
  #     profile.image = f
  #   end
  # end
end
