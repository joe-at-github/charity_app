class PackageItem < ApplicationRecord
  belongs_to :product
  belongs_to :package

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :package_present

  private
  def package_present
    if package.nil?
      errors.add(:package, "is not a valid package.")
    end
  end
end
