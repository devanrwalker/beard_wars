class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :picture_size do
   process :resize_to_fill => [800, 800]
  end

  version :thumbnail do
   process :resize_to_fill => [125, 125]
  end

  def extension_white_list
   %w(jpg jpeg gif png)
  end
end
