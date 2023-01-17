require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "I expect to validate all requireds fields" do
    it "Validade the field name" do
      #triple AAA
      # Assert, Act, Arrenge
      user = build(:user)
      expect(user.valid?).to eq(true)
    end

    it "validate field name not present" do
      user = build(:user, name: nil)
      expect(user.valid?).to eq(false)
    end

    it "validate field name present" do
      user = build(:user)
      expect(user.valid?).to eq(true)
    end

    it "Validate field phone not present" do
      user = build(:user, phone: nil)
      expect(user.valid?).to eq(false)
    end

    it "Validate field phone present" do
      user = build(:user)
      expect(user.valid?).to eq(true)
    end

    it "Validate field email not present" do
      user = build(:user, email: nil)
      expect(user.valid?).to eq(false)
    end

    it "Validade field email present"do
      user = build(:user)
      expect(user.valid?).to eq(true)
    end

    it "Validate field password not present" do
      user = build(:user, password: nil)
      expect(user.valid?).to eq(false)
    end

    it "Validade field password present"do
      user = build(:user)
      expect(user.valid?).to eq(true)
    end



  end

  context "Validate email" do
    it "Validate unique emails" do
      user1 = create(:user)
      user2 = build(:user, email: user1.email)

      expect(user2.valid?).to eq(false)
    end

    it "Validate error messages for single emails" do
      user1 = create(:user)
      user2 = build(:user, email: user1.email)

      user2.save

      expect(user2.valid?).to eq(false)
      expect(user2.errors.size).to be_positive
  end

end
