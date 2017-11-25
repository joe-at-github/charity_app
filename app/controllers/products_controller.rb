require 'filter.rb'

class ProductsController < ApplicationController

  def index
    params[:category]? @filter = Filter.new(filter_params) : @filter = Filter.new
    @products = @filter.product_list
    @package_item = current_package.package_items.new
  end

  private
  def filter_params
    params.permit(:category)
  end

end