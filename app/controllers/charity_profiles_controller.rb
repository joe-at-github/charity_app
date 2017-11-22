class CharityProfilesController < ApplicationController

  before_action :find_account, only: [:new, :edit, :update]

  def new
    @profile = CharityProfile.new
  end

  def create
    @profile = current_charity.create_charity_profile(profile_params)
  end

  def edit
    @profile = CharityProfile.find_by(charity_id: params[:id])
  end

  def update
    @profile = CharityProfile.find(params[:id])
    @profile.update(profile_params)
  end

  private
  def find_account
    @account = current_charity
  end

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