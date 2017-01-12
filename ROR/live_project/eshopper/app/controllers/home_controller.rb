class HomeController < ApplicationController
  
  def index
    @banners = Banner.all
  end

  def cart
  end
end
