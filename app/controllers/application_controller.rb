class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_package

  def current_package
    if !session[:package_id].nil?
      Package.find(session[:package_id])
    else
      Package.new(package_status_id: 6)
    end
  end
end
