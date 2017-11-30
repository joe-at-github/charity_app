class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :profile
  
  has_one :business_profile

  validates :role, inclusion: { in: [0, 1] }
end
