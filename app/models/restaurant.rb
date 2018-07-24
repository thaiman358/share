class Restaurant < ApplicationRecord
  # Start　画像アップロード
  mount_uploader :image, ImageUploader
  # End　画像アップロード
  has_many :favs, dependent: :destroy
  has_many :fav_users, through: :favs, source: :user
  has_many :visits, dependent: :destroy
  has_many :visit_users, through: :visits, source: :user
  # validates :name, presence: true, length: { in: 1..50 }
  # validates :category, presence: true
  # validates :overview, presence: true
  # validates :tel, presence: true
  # validates :hour, presence: true
  # validates :price, presence: true
  # validates :address, presence: true
end
