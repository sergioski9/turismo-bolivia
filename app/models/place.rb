class Place < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :review_places, dependent: :destroy

  has_one_attached :photo, dependent: :destroy

  validates :name, :description, :rating, presence: true
end
