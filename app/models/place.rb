class Place < ApplicationRecord
  has_many :publications
  has_many :review_places

  has_one_attached :photo

  validates :name, :description, :rating, presence: true
end
