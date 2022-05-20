class User < ApplicationRecord
  has_many :publications
  has_many :review_places
  has_many :review_publications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
