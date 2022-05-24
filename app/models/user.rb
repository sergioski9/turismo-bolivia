class User < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :review_places, dependent: :destroy
  has_many :review_publications, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
