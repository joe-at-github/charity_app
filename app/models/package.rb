class Package < ApplicationRecord
  belongs_to :package_status
  has_many :package_items
  before_create :set_package_status

  accepts_nested_attributes_for :package_items


  private
  def set_package_status
    self.package_status_id = 1
  end

end
