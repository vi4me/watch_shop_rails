# frozen_string_literal:true

class Product < ApplicationRecord

  has_many :related_products
  has_many :related, through: :related_products

  enum hit: { hit: 1, not_hit: 0 }

  validates :title, presence: true
  validates :price, presence: true
end
