class Publication < ApplicationRecord
  belongs_to :user
  belongs_to :place

  has_many :review_publications
end
