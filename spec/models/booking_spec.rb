require 'rails_helper'

RSpec.describe Booking, type: :model do
  before :each do
    user = User.new(name: 'Abel.G', email: 'abcd@gmail.com', password: '123456')
    car = Car.new(name: 'BMW 3 Series',
      image: 'https://www.bmw.com/content/dam/bmw/common/all-models/3-series/sedan/2021/navigation/BMW-3-Series-Sedan-2021-Exterior-01.jpg/_jcr_content/renditions/cq5dam.resized.img.585.low.time1594732800000.jpg',
      model: '2021',
      daily_price: 150,
      description: 'The BMW 3 Series is a compact executive car manufactured by the German automaker BMW since May 1975. It is the successor to the 02 Series and has been produced in six different generations.')
    @booking = Booking.new(pickup_date: '2023-01-05', return_date: '2023-01-08')
    @booking.car = car
    @booking.user = user
  end

  context 'Testing Validations' do
    it 'is valid with valid attributes' do
      @booking.save
      expect(@booking).to be_valid
    end

    it 'is not valid without a pickup date' do
      @booking.pickup_date = nil
      @booking.save
      expect(@booking).to_not be_valid
    end

    it 'is not valid without a return date' do
      @booking.return_date = nil
      @booking.save
      expect(@booking).to_not be_valid
    end

    it 'is not valid without password' do
      @booking.password = nil
      @booking.save
      expect(@booking).to_not be_valid
    end
  end

  # context 'Testing Associations' do
  #   it 'has_many groups/categories' do
  #     assoc = booking.reflect_on_association(:bookings)
  #     expect(assoc.macro).to eq :has_many
  #   end

  #   it 'has_many expenses/transactions' do
  #     assoc = booking.reflect_on_association(:cars)
  #     expect(assoc.macro).to eq :has_many
  #   end
  end
end
