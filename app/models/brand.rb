# frozen_string_literal:true

class Brand < ApplicationRecord
  include ImageUploader::Attachment(:image)
  
  validates :title, presence: true
  validates :description, presence: true

end
