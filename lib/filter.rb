class Filter

  include ActiveModel::Model

  attr_accessor :category

  def product_list
    @products = Product.all.sort_by &:name

    if !category.blank?
      food_category_filter
    end

    if !category.blank?
      else_category_filter
    end

    @products
  end

  private
  def food_category_filter
    @products = Product.where(category: category)
  end

  def else_category_filter
    @products = Product.where(category: category)
  end

end