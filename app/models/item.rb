class Item < ApplicationRecord
  belongs_to       :user
  #has_one          :record
  has_one_attached :image

  validates :title,  presence: true
  validates :content,  presence: true
  validates :genre_id,  presence: true
  validates :condition_id,  presence: true
  validates :cost_id,  presence: true
  validates :prefecture_id,  presence: true
  validates :date_id,  presence: true
  validates :price,  presence: true
end