class User < ApplicationRecord
  validates :name, presence: true, length:{in: 1..30}
  validates :email, presence: true, length: { in: 1..255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  mount_uploader :image, ImageUploader
  has_many :pictures
  has_many :favorites, dependent: :destroy
end
