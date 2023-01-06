class BookingSerializer < ActiveModel::Serializer
  belongs_to :car
  attributes :id, :pickup_date, :return_date
end
