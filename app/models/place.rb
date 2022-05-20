class Place < ApplicationRecord
  has_many :publications
  has_many :review_places
end
