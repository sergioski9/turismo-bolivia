class Place < ApplicationRecord
  has_many :publications
  has_many :review_places

  validates :name, :description, :rating, presence: true
end
