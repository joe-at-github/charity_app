class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :type, inclusion: { in: ["CharityProfile", "BusinessProfile"] }
  validates :name, presence: true
  
  geocoded_by :street_postcode
  after_validation :geocode, if: ->(obj){ obj.street_postcode.present? and obj.street_postcode_changed? } 

  def street_postcode
   [street, postcode].join(", ")
  end

end
