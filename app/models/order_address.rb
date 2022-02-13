class OrderAddress
  include ActiveModel::Model
  attr_accessor :token, :post_code, :prefecture_id, :city, :city_number, :phone_number, :order_id, :user_id, :item_id

  with_options presence: true do
    validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :token, :city, :city_number, :order_id, :user_id, :item_id
  end
  validates :phone_number, numericality: { only_integer: true, message: 'is invalid. Input half-width characters' }
  validates :prefecture_id, numericality: {other_than: 1, message: "can't be blank"}

  def save
    order = Order.create(item_id: item_id, user_id: user_id)
    
    Address.create(post_code: post_code, prefecture_id: prefecture_id, city: city, city_number: city_number, building: building, phone_number: phone_number,  order_id: order.id)
  end
end