class CharityProfile < ApplicationRecord
  belongs_to :charity
  mount_uploader :image, ImageUploader
end
