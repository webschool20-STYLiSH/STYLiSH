class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, ImageUploader

  has_many :articles

  has_many :comments, dependent: :destroy

  has_many :relationships, foreign_key: :follower_id
  has_many :followings, through: :relationships
  has_many :inverse_follows, foreign_key: :following_id, class_name: Relationship
  has_many :followers, through: :inverse_follows
  has_many :favorites, dependent: :destroy

  def followed_by? user
    inverse_follows.where(follower_id: user.id).exists?
  end

end