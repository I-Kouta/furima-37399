class OrderAddress
  include ActiveModel::Model
  attr_accessor :token, :post_code, :prefecture_id, :city, :city_number, :building, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :token, :city, :city_number, :phone_number, :user_id, :item_id
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: ' は以下の様に入力してください (e.g. 123-4567)' }
  end
  validates :prefecture_id, numericality: { other_than: 1, message: "が選択されていません" }
  validates :phone_number, numericality: { only_integer: true, message: 'は半角で入力してください' }
  validates :phone_number, format: { with: /\A[0-9]{10,11}\z/, message: 'が有効ではありません' }

  def save
    order = Order.create(item_id: item_id, user_id: user_id)

    Address.create(post_code: post_code, prefecture_id: prefecture_id, city: city, city_number: city_number, building: building,
                   phone_number: phone_number, order_id: order.id)
  end
end
