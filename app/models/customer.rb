class Customer < ApplicationRecord
  has_one_attached :profile_pic
  has_rich_text :about_me
  # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed" }
  validates :email, presence: true
  # scope :with_email, -> { where(email: "santoshraj@gmail.com").pluck(:email) }
  scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
end
