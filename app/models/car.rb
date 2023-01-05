class Car < ApplicationRecord
  has_many :booking, dependent: :destroy

  MAX_LENGTH = 250
  MIN_NUM = 1

  validates :name, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :model, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :description, presence: true, length: { minimum: MIN_NUM }
  validates :image, presence: true, length: { minimum: MIN_NUM }
  validates :daily_price, presence: true,
                          numericality: { greater_than_or_equal_to: MIN_NUM }
end
