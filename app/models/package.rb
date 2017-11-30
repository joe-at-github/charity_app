class Package < ApplicationRecord
  belongs_to :package_status
  has_many :package_items

  accepts_nested_attributes_for :package_items

  belongs_to :business_profile
  belongs_to :charity_profile, optional: true


end
