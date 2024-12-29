require "rails_helper"

RSpec.describe User, type: :model do
  subject { User.new(name: "dummy", age: 24, city: "dehli", email: "dummy@124gmail.com") }

  it "is valid with attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without name" do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  context "when age is greater than 18" do
    let(:age) { 20 }

    it "is valid" do
      expect(subject).to be_valid
    end
  end
  context "when age is less than 18" do
    it "is not valid" do
      subject.age = 17
      expect(subject).not_to be_valid
      expect(subject.errors[:age]).to include("must be greater than 18")
    end
  end
end
