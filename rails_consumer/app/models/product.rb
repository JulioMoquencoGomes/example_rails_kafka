class Product < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :price, presence: true

  def inspect
    "#<Product id: #{id}, name: #{name}, code: #{code}, price: #{formatted_price}>"
  end

  def formatted_price
    format("%.2f", price)
  end
end