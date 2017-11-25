class ProductsController < ApplicationController

  def index
    @products = Product.all
    @package_item = current_package.package_items.new
  end

end