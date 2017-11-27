class PackagesController < ApplicationController
  def show
   @package_items = current_package.package_items
  end

  def edit
    @package = current_package
    @package_items = current_package.package_items
  end

  def update
    @package = current_package
    @package.update_attributes(package_params)

    redirect_to package_path
  end

  private
  def package_params
    params.require(:package).permit(:id, :package_items_attributes => [:id, :quantity, :expiration_date])
  end

end
