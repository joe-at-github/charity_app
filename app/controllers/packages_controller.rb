class PackagesController < ApplicationController
  def show
   @package_items = current_package.package_items
  end
end
