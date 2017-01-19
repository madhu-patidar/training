class HomeController < ApplicationController
  
  def index
    @banners = Banner.all
    @categories = Category.all
    @category = Category.first
    @brands = Brand.all
    if params[:sub_category_id].present?
      @sub = Category.find(params[:sub_category_id])
      @products = Product.where(category_id: params[:sub_category_id])
     else

      @products = Product.where(category_id: @category.id)
    end
  end

  def cart
  end
end
