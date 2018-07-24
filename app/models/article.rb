class Article < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :read_users, through: :reads, source: :user
  validates :industry, presence: true
  validates :arttype, presence: true
  validates :titile, presence: true, length: { in: 1..50 }
  validates :content, presence: true, length: { in: 1..500 }
end
