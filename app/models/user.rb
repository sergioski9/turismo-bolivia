class User < ApplicationRecord
  has_many :publications, dependent: :destroy
  has_many :review_places, dependent: :destroy

  has_one_attached :photo

  validates :first_name, :last_name, :phone_number, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
