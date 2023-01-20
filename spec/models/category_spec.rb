require 'rails_helper'

RSpec.describe Category, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context "I hope validate require fields" do
    it "Validate the field present" do
      category = build(:category)

      expect(category.valid?).to eq(true)
    end

    it "Validate the field not present" do
      category = build(:category, name: nil)

      expect(category.valid?).to eq(false)
    end
  end
end
