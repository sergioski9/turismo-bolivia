class ReviewPublication < ApplicationRecord
  belongs_to :publication
  belongs_to :user

  validates :comment, :rating, presence: true
end
