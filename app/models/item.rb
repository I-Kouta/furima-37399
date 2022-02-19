class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to       :user
  has_one          :order
  has_one_attached :image
  belongs_to :genre
  belongs_to :condition
  belongs_to :cost
  belongs_to :prefecture
  belongs_to :shipping_date

  validates :image, :title, :content, :genre_id, :condition_id, :cost_id, :prefecture_id, :shipping_date_id, :price,
            presence: true

  validates :price, numericality: { only_integer: true, message: ' is invalid. Input half-width characters' }

  validates :price,
            numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: ' is out of setting range' }

  validates :genre_id, :condition_id, :cost_id, :prefecture_id, :shipping_date_id,
            numericality: { other_than: 1, message: " can't be blank" }
end
