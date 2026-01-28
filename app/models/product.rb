class Product < ApplicationRecord
# validates :stock, numericality: true
# validates :stock, numericality: {
#   greater_than_or_equal_to: 5,
#   less_than_or_equal_to: 200
# }
validates :description, length: { maximum: 500 }, allow_blank: true

validate :product_must_be_active

has_rich_text :feedback

scope :out_of_stock, -> { where("stock <= ?", 0) }

  def product_must_be_active
    unless is_active
      errors.add(:is_active, "must be true to create a product")
    end
  end
    def available
        stock>0
    end
    def can_be_sold
        is_active && stock>0
    end
    def expensive
      price>10000
    end
    def low_stock
      stock<=5
    end
end
