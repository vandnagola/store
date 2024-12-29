class User < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: { greater_than: 18 }
end
