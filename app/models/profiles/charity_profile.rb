class CharityProfile < Profile

  # wip
  has_many :packages
  
  def self.model_name
    Profile.model_name
  end

end