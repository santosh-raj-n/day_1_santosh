class Product < ApplicationRecord
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
