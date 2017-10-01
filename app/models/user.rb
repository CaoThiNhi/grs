class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
end
