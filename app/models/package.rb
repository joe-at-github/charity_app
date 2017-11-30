class Package < ApplicationRecord
  belongs_to :package_status
  has_many :package_items
  # before_create :set_package_status

  accepts_nested_attributes_for :package_items

  # wip
  belongs_to :business_profile
  belongs_to :charity_profile, optional: true

  # private
  # def set_package_status
  #   self.package_status_id = 6
  # end

  # def set_business_profile_id
  #   self.business_profile_id = current_user.profile.id
  # end

end
