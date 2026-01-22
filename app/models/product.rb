class Product < ApplicationRecord
validates :stock, numericality: true
validates :stock, numericality: {
  greater_than_or_equal_to: 5,
  less_than_or_equal_to: 200
}
validates :description, length: { maximum: 500 }, allow_blank: true
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
