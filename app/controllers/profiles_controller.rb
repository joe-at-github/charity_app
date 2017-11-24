class ProfilesController < ApplicationController

  before_action :find_account, only: [:new, :edit, :update]
  before_action :find_profile, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    if current_user.role == 0
      @profile.type = "CharityProfile"
    else current_user.role == 1
      @profile.type = "BusinessProfile"
    end
    @profile.save   
  end

  def edit
    
  end

  def update
    @profile.update(profile_params)
  end

  private
  def find_account
    @account = current_user
  end

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(
      :description,
      :street,
      :postcode,
      :contact_first_name,
      :contact_last_name,
      :image,
      :name
      )
  end
end