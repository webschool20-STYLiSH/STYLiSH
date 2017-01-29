<<<<<<< HEAD
class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  process :resize_to_limit => [100, 100]
=======
# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

>>>>>>> ee2fae0e3961353f99ed03542eaa73f22ec8a736
  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

<<<<<<< HEAD
=======
  # encoding: utf-8


class ImageUploader < CarrierWave::Uploader::Base  


# リサイズしたり画像形式を変更します。
  include CarrierWave::RMagick


# 画像の上限を100pxにします。
  process :resize_to_limit => [100, 100]


end
>>>>>>> ee2fae0e3961353f99ed03542eaa73f22ec8a736
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
<<<<<<< HEAD
  # process scale: [200, 300]
=======
  # process :scale => [200, 300]
>>>>>>> ee2fae0e3961353f99ed03542eaa73f22ec8a736
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
<<<<<<< HEAD
  #   process resize_to_fit: [50, 50]
=======
  #   process :resize_to_fit => [50, 50]
>>>>>>> ee2fae0e3961353f99ed03542eaa73f22ec8a736
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
<<<<<<< HEAD
  # def extension_whitelist
=======
  # def extension_white_list
>>>>>>> ee2fae0e3961353f99ed03542eaa73f22ec8a736
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
