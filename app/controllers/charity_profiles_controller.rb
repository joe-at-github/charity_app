class CharityProfilesController < ApplicationController

  def new
    @charity_account = Charity.find(params[:account][:account_id])
    @profile = CharityProfile.new
  end

end