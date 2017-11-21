class CharityProfilesController < ApplicationController

  def new
    @account = current_charity
    @profile = CharityProfile.new
  end

  def create
    @profile = current_charity.create_charity_profile(profile_params)
  end

  private
  def profile_params
    params.require(:charity_profile).permit(
      :description,
      :street,
      :postcode ,
      :contact_first_name,
      :contact_last_name
      )
  end
end