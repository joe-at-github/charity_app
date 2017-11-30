require 'filter.rb'

class ProductsController < ApplicationController

  before_action :signed_in_business_only, only: [:index]
  before_action :user_with_profile_only, only: [:index]
  before_action :load_page_content, only: [:index, :package_item_form]

  def package_item_form
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

  def load_page_content
    params[:category]? @filter = Filter.new(filter_params) : @filter = Filter.new
    @products = @filter.product_list
    @package_item = current_package.package_items.new
  end

end