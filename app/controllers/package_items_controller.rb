class PackageItemsController < ApplicationController
  def create
    @package = current_package
    @package.update(package_status_id: 6, business_profile_id: current_user.profile.id)
    @package_item = @package.package_items.new(package_item_params)
    @package.save!
    session[:package_id] = @package.id
    
    redirect_to products_path
  end

  # def update
  #   @package = current_package
  #   @package_item = @package.package_items.find(params[:id])
  #   @package_item.update_attributes(package_item_params)
  #   @package_items = @package.package_items
  # end

  # def destroy
    # @package = current_package
    # @package_item = @package.package_items.find(params[:id])
    # @package_item.destroy
    # @package_items = @package.package_items
  # end
  
  private
  def package_item_params
    params.require(:package_item).permit(:quantity, :product_id, :expiration_date)
  end
end
