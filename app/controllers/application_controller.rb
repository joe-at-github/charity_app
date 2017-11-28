class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_package

  def current_package
    if !session[:package_id].nil?
      Package.find(session[:package_id])
    else
      Package.new
    end
  end
end
