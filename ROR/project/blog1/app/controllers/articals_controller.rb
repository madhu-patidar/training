class ArticalsController < ApplicationController
  def index
    @articals = Artical.all    
  end

  def show
    @artical = Artical.find(params[:id])   
  end

  def new
  @artical = Artical.new
  end

  def edit
  @artical = Artical.find(params[:id])
  end

  def create
    @artical = Artical.new(artical_params)
    if @artical.save
      redirect_to articals_path
    else
      redirect_to artical_path
    end
  end
  def update
    @artical = Artical.find(params[:id])
    @artical.update(artical_params)
    redirect_to artical_path
  end

  def destroy
  @artical = Artical.find(params[:id])
  @artical.destroy
  redirect_to artical_path
  
  end

  def artical_params
    params.require(:artical).permit(:title,:text)  
  end
end
