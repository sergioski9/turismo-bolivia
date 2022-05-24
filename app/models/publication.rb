class Publication < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_many :review_publications
  has_many_attached :photos

  validates :title, :description, presence: true
end
