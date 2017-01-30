class HomeController < ApplicationController
  
  def index
    @banners = Banner.all
    @top_brands = Brand.take(10)
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
end
