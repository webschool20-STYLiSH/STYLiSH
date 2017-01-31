class Article < ApplicationRecord

	mount_uploader :image, ImageUploader

	acts_as_taggable_on :tags

	acts_as_ordered_taggable_on :interests

	validates :user_id, presence: true
	belongs_to :user
end
