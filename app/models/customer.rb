class Customer < ApplicationRecord
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
  validates :email, presence: true, uniqueness: true
end
