require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: 'Saw Gerrera', email: 'saw@rebels.com', password: 'password')
  end

  context 'Testing Validations' do
    it 'is valid with valid attributes' do
      @user.save
      expect(@user).to be_valid
    end

    it 'is not valid without a name' do
      @user.name = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'is not valid without email' do
      @user.email = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'is not valid without password' do
      @user.password = nil
      @user.save
      expect(@user).to_not be_valid
    end
  end

  context 'Testing Associations' do
    it 'has_many booking' do
      assoc = User.reflect_on_association(:bookings)
      expect(assoc.macro).to eq :has_many
    end

    it 'has_many vars through bookings' do
      assoc = User.reflect_on_association(:cars)
      expect(assoc.macro).to eq :has_many
    end
  end
end
