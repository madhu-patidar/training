class HomeController < ApplicationController
  
  def index
    @banners = Banner.all
    @categories = Category.all
    @category = Category.find(1)
    @brands = Brand.all
  end

  def cart
  end
end
