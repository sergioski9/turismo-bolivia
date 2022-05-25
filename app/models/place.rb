class Place < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :review_places, dependent: :destroy

  has_many_attached :photos, dependent: :destroy

  validates :name, :description, :rating, presence: true
  validates :city, :recomendation, :other_recomendation, presence: true
  validates :how_to_get, :what_to_bring, presence: true
end
