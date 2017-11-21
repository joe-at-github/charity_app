class BusinessProfilesController < ApplicationController

  def new
    @account = current_business
    @profile = BusinessProfile.new
  end

  def create

  end

end