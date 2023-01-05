class Car < ApplicationRecord
  has_many :booking, dependent: :destroy

  MAX_LENGTH = 250
  MIN_NUM = 1
  # MAX_NUM = 100_000_000

  validates :name, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :model, presence: true, length: { minimum: MIN_NUM, maximum: MAX_LENGTH }
  validates :image, presence: true, length: { minimum: MIN_NUM }
  validates :Daily_Price, presence: true,
                                   numericality: { greater_than_or_equal_to: MIN_NUM, less_than_or_equal_to: MAX_NUM }
end
