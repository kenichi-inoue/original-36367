class PurchaseShip
  include ActiveModel::Model
  attr_accessor :user_id, :product_id, :postal_code, :shipping_area_id, :city, :street, :building, :phone, :token

end
