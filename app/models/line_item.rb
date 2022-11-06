# frozen_string_literal: true

class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  def decrement_quantity
    quantity = self.quantity

    if quantity == 1
      destroy
    else
      quantity -= 1
      update(quantity:)
    end
  end
end
