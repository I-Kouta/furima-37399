class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to       :user
  # has_one          :record
  has_one_attached :image
  belongs_to :genre
  belongs_to :condition
  belongs_to :cost
  belongs_to :prefecture
  belongs_to :shipping_date

  validates :image, :title, :content, :genre_id, :condition_id, :cost_id, :prefecture_id, :shipping_date_id, :price, presence: true

  validates :genre_id, :condition_id, :cost_id, :prefecture_id, :shipping_date_id, numericality: { other_than: 1, message: "can't be blank" }
end
