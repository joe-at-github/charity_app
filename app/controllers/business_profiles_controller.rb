class BusinessProfilesController < ApplicationController

  def new
    @account = current_business
    @profile = BusinessProfile.new
  end

  def create
    @profile = current_business.create_business_profile(profile_params)
  end

  private
  def profile_params
    params.require(:business_profile).permit(
      :description,
      :street,
      :postcode ,
      :contact_first_name,
      :contact_last_name
      )
  end
end