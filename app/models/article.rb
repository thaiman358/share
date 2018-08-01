class Article < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :read_users, through: :reads, source: :user
  has_many :favarticles, dependent: :destroy
  has_many :favarticle_users, through: :favarticles, source: :user
  validates :industry, presence: true
  validates :arttype, presence: true
  validates :title, presence: true, length: { in: 1..50 }
  validates :content, presence: true, length: { in: 1..500 }
end
