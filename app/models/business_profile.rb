class BusinessProfile < ApplicationRecord
  belongs_to :business
  mount_uploader :image, ImageUploader

end