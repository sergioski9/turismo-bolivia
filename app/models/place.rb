class Place < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :review_places, dependent: :destroy

  has_many_attached :photos, dependent: :destroy

  validates :name, :description, :rating, presence: true
  validates :city, :recomendation, :other_recomendation, presence: true
  validates :how_to_get, :what_to_bring, presence: true

  def top_3
    if publications.count <= 3
      publications
    else
      publications.order("user_id").reverse.take(3)
    end
  end
end
