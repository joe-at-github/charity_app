class BusinessProfilesController < ProfilesController

  def show
    @profile = current_user.business_profile
    @packages = @profile.packages
  end

end