class BusinessProfilesController < ApplicationController

  def new
    # binding.pry
    @business_account = Business.find(params[:account][:account_id])
    @profile = BusinessProfile.new
  end

end