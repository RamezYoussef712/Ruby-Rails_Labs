class Book < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true
  validates :image, presence: true
end
