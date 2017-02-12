class Comment < ApplicationRecord
	belongs_to :article
	belongs_to :user
	mount_uploader :image, ImageUploader
end
