class CharityProfilesController < ApplicationController

  before_action :find_account, only: [:new, :edit, :update]
  before_action :find_profile, only: [:edit, :update]

  def new
    @profile = CharityProfile.new
  end

  def create
    @profile = current_charity.create_charity_profile(profile_params)
  end

  def edit
    
  end

  def update
    @profile.update(profile_params)
  end

  private
  def find_account
    @account = current_charity
  end

  def find_profile
    @profile = CharityProfile.find(params[:id])
  end

  def profile_params
    params.require(:charity_profile).permit(
      :description,
      :street,
      :postcode,
      :contact_first_name,
      :contact_last_name
      )
  end
end