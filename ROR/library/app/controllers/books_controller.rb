class BooksController < ApplicationController
   
   def show
    @book = Author.find(params[:id])
  end
  
  def new
  end
  def create
    @book = Author.new(params.require(:book).permit(:name, :author))
 
    @book.save
    end
end
