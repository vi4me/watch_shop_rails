# frozen_string_literal:true

class Product < ApplicationRecord

  has_many :related_products
  has_many :related, through: :related_products
  has_many :galleries
  belongs_to :category

  enum hit: { hit: 1, not_hit: 0 }
  enum status: { active: 1, not_active: 0 }
  scope :active, lambda { where(status: 1) }

  validates :title, presence: true
  validates :price, presence: true
end
