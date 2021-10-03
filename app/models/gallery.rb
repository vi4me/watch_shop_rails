class Gallery < ApplicationRecord
  
  include ImageUploader::Attachment(:image)

  belongs_to :product
end
