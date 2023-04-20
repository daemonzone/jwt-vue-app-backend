require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Basic rules' do

    specify "is valid with valid attributes" do
      user = User.new(email: "test@email.com", password: "password")
      expect(user).to be_valid
    end

    specify 'User is not valid without email' do
      user = User.new(email: nil)
      expect(user).to_not be_valid      
    end

    specify 'User is not valid without a password' do
      user = User.new(password: nil)
      expect(user).to_not be_valid      
    end

    specify 'User is not valid without a valid email' do
      user = User.new(email: "asodasdoj.com")
      expect(user).to_not be_valid      
    end

  end
end
