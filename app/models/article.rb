class Article < ApplicationRecord

	mount_uploader :image, ImageUploader

	acts_as_taggable_on :tags

	acts_as_ordered_taggable_on :interests

	validates :user_id, presence: true
	belongs_to :user

	has_many :favorites, dependent: :destroy
	def favorited_by? user
    	favorites.where(user_id: user.id).exists?
	end

	# 記事を時刻の降順に並び替える
	default_scope -> { order(created_at: :desc) }
end
