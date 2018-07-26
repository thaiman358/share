class User < ApplicationRecord
  has_many :favs, dependent: :destroy
  has_many :fav_restaurants, through: :favs, source: :restaurant
  has_many :visits, dependent: :destroy
  has_many :reads, dependent: :destroy
  has_many :preferences, dependent: :destroy
  has_many :favarticles, dependent: :destroy
  has_many :favarticle_articles, through: :favarticles, source: :article
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
