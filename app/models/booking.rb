class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :return_date, comparison: { greater_than: :pickup_date }
  validates :pickup_date, presence: true, comparison: { greater_than_or_equal_to: Date.today }
  validates :return_date, presence: true, comparison: { greater_than: Date.today }
end
