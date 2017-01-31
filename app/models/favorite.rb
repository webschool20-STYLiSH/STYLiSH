class Favorite < ApplicationRecord
	belongs_to :user
    belongs_to :article

    validates :user, presence: true
	validates :user_id, uniqueness: { scope: :article_id }
	validates :article, presence: true

	has_many :favorites, dependent: :destroy

	def favorited_by? user
    favorites.where(user_id: user.id).exists?
	end
end
