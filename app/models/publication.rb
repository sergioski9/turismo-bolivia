class Publication < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :place
  belongs_to :category

  has_many :review_publications, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  geocoded_by :address

  validates :title, :description, presence: true

  enum status: [ :pending, :active, :deleted ], _default: :active

end
