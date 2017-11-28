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

  def signed_in_charity_only
    unless current_user && current_user.role == 0
      flash[:notice] = "You need to be signed in as a Charity to acces this page"
      redirect_to root_path
    end
  end

  def signed_in_business_only
    unless current_user && current_user.role == 1
      flash[:notice] = "You need to be signed in as a Business to acces this page"
      redirect_to root_path
    end
  end

end
