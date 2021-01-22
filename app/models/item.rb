class Item < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title
    validates :explanation
    validates :region_id, numericality: { other_than: 1 }
  end
    

  belongs_to :user
  has_one_attached :image
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :region
end
