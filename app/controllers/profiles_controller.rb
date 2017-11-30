class ProfilesController < ApplicationController

  before_action :find_account, only: [:new, :edit, :update]
  before_action :find_profile, :current_user_only, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.create_profile(profile_params)
    if current_user.role == 0
      @profile.update(type: "CharityProfile")
    else current_user.role == 1
      @profile.update(type: "BusinessProfile")
    end
    redirect_to profile_path(@profile)
  end

  def show
    @profile = current_user.profile
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path
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