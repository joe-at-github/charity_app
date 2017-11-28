class PackagesController < ApplicationController
  
  def show
   @package_items = current_package.package_items
   @package = Package.find(params[:package_id])
  end

  def edit
    # legacy
    @package = current_package
    @package_items = current_package.package_items
  end

  def update
    @package = current_package
    @package.update_attributes(package_params)
    flash[:notice] = "Package successfully updated"
    redirect_to edit_package_path
  end

  def finalize
    if current_package.available_from.nil? || current_package.available_until.nil?
     flash[:notice] = "Please indicates availabilties"
     redirect_to edit_package_path(current_package)
    elsif current_package.available_from < Date.today || current_package.available_until < current_package.available_from
     flash[:notice] = %q(Incorrect dates:
                          - Available from cannot be a date in the past
                          - Available until cannot be a date prior to available from
                          )
     redirect_to edit_package_path(current_package) 
    else
      current_package.update!(package_status_id: 1)
      session["package_id"] = nil
      flash[:notice] = "Package successfully created!"
      redirect_to business_profile_path(current_user)
    end
  end

  private
  def package_params
    params.require(:package).permit(:id, :available_from, :available_until, :package_items_attributes => [:id, :quantity, :expiration_date])
  end

end
