require "rails_helper"

RSpec.describe User do
  describe "Basic rules" do
    specify "is valid with valid attributes" do
      user = described_class.new(email: "test@email.com", password: "password")
      expect(user).to be_valid
    end

    specify "User is not valid without email" do
      user = described_class.new(email: nil)
      expect(user).not_to be_valid
    end

    specify "User is not valid without a password" do
      user = described_class.new(password: nil)
      expect(user).not_to be_valid
    end

    specify "User is not valid without a valid email" do
      user = described_class.new(email: "asodasdoj.com")
      expect(user).not_to be_valid
    end
  end
end
