class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to       :user
  # has_one          :record
  has_one_attached :image

  validates :title, :content, :genre_id, :condition_id, :cost_id, :prefecture_id, :date_id, :price, :image, presence: true

  validates :genre_id, :condition_id, :cost_id, :prefecture_id, :shipping_date_id, numericality: { other_than: 1 }
end
