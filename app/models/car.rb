class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :user, through: :bookings

  validates :name, presence: true, length: { in: 1..250 }
  validates :model, presence: true, length: { in: 1..250 }
  validates :image, presence: true, length: { in: 1..250 }
  validates :daily_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { in: 1..500 }
end
