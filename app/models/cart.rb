# == Schema Information
#
# Table name: carts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items, source: :product


  def add_product_to_cart(product,quantity)
    ci = cart_items.build
    ci.product = product
    ci.quantity = quantity
    ci.save
  end

  def update_product_quantity_in_cart(product,quantity)
    ci = cart_items.find_by(product: product)
    ci.quantity += quantity.to_i
    ci.save
  end

  def total_price
    sum = 0
    cart_items.each do |cart_item|
      if cart_item.product.price.present?
        sum = sum + cart_item.quantity * cart_item.product.price
      end
    end
    sum
  end

   def clean!
   cart_items.destroy_all
 end

end
