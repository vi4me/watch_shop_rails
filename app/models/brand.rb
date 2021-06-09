# frozen_string_literal:true

class Brand < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

end
