class Item < ApplicationRecord
  validates :title,

  belongs_to :user
  has_one_attached :image
end
