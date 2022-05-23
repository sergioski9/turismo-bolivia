class ReviewPlace < ApplicationRecord
  belongs_to :place
  belongs_to :user

  validates :comment, :rating, presence: true
end
