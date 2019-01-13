require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    let!(:user1) { FactoryBot.build(:user, character: "") }
    let!(:user2) { FactoryBot.build(:user, title: "") }
    let!(:user3) { FactoryBot.build(:user, tagline: "") }
    let!(:user4) { FactoryBot.build(:user, attendee: "") }
    let!(:user5) { FactoryBot.build(:user, email: "") }

    it "is not valid without a character" do
      expect(user1).to_not be_valid
    end

    it "is not valid without a title" do
      expect(user2).to_not be_valid
    end

    it "is not valid without a tagline" do
      expect(user3).to_not be_valid
    end

    it "is not valid without an attendee" do
      expect(user4).to_not be_valid
    end

    it "is not valid without an email" do
      expect(user5).to_not be_valid
    end
  end
end
