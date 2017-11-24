class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :type, inclusion: { in: ["CharityProfile", "BusinessProfile"] }
  validates :name, presence: true
end
