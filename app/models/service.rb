class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :price, presence: true
  validates :title, presence: true
  validates :description, presence: true
  has_many_attached :photos
end
