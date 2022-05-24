class Publication < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_many :review_publications, dependent: :destroy
  has_many_attached :photos, dependent: :destroy

  validates :title, :description, presence: true
end
