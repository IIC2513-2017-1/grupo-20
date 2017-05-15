class User < ApplicationRecord
  has_secure_password

  has_many :rifas
  has_many :numeros

  has_many :follower_relationships, foreign_key: :following_id,
                                    class_name: 'Follow', dependent: :destroy
  has_many :following_relationships, foreign_key: :follower_id,
                                     class_name: 'Follow', dependent: :destroy

  has_many :followers, through: :follower_relationships, source: :follower
  has_many :following, through: :following_relationships, source: :following

  mount_uploader :avatar, AvatarUploader

  validates :name, presence: { message: "must be given please" }, uniqueness: true, length: { minimum:4, maximum: 20 }
  validates :mail, presence: true, uniqueness: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates_confirmation_of :mail, presence:true
  validates :password, presence:true, length: { :minimum => 4 }
  validates_confirmation_of :password, presence:true

end
