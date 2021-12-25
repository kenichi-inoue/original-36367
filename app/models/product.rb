class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :product_category
  belongs_to :product_condition
  belongs_to :shipping_burden
  belongs_to :shipping_area
  belongs_to :days_to_ship
    
  belongs_to :user
  has_one :purchase
  has_one_attached :image
end
