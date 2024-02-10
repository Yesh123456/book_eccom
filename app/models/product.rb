class Product < ApplicationRecord
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50,50]
    attachable.variant :medium, resize_to_limit: [250,250]
  end
  has_many :stocks
  belongs_to :category
  has_many :order_products

  enum binding_type: { harbound: 0, paperback: 1 }

end
