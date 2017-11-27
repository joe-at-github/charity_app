require 'filter.rb'

class ProductsController < ApplicationController

  def index
    params[:category]? @filter = Filter.new(filter_params) : @filter = Filter.new
    @products = @filter.product_list
    @package_item = current_package.package_items.new
  end

  def package_item_form
    params[:category]? @filter = Filter.new(filter_params) : @filter = Filter.new
    @products = @filter.product_list
    @package_item = current_package.package_items.new
    @product = Product.find(params[:product_id])
    respond_to do |format|
      format.html
      format.js
    end 

  end

  private
  def filter_params
    params.permit(:category)
  end

end