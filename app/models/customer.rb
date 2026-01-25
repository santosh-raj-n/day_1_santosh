class Customer < ApplicationRecord
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
  validates :email, presence: true, uniqueness: true
  scope :with_email, -> { where(email: "santoshraj@gmail.com").pluck(:email) }
  scope :blacklisted_customers, -> { all }
end
