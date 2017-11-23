class PagesController < ApplicationController

  def home
  end


  def register
    redirect_to new_user_registration_path
  end

  def login
  end

end