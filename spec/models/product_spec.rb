require "rails_helper"

RSpec.describe Product, type: :model do
  it "Product name should be present" do
    pro = Product.new(name: "dummy")
    pro.save
    expect(pro).to be_valid
  end

  it "is not valid without name" do
    pro = Product.new(name: nil)
    pro.save
    expect(pro).not_to be_valid
  end
end
