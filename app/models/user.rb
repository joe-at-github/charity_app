class User < ApplicationRecord
  # enum role: {charity: 0, business: 1}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  
  has_one :business_profile

  # enum role: {charity: 0, business: 1}
  validates :role, inclusion: { in: [0, 1] }
end
