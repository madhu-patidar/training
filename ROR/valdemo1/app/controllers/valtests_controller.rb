class ValtestsController < ApplicationController
 
  def index
    @valtest = Valtest.all
  end

   def show
    @valtest = Valtest.find(params[:id])
  end

  def new
    @valtest = Valtest.new 
  end


  def edit
    @valtest = Valtest.find(params[:id])
  end

  def create
    @valtest = Valtest.new(valtest_params)
    if @valtest.save
       redirect_to @valtest 
    else
      render 'show'
    end
end

  def update
    @valtest = Valtest.find(params[:id])
    if @valtest.update(valtest_params)
      redirect_to @valtest
    else
      render 'edit'
    end

  end
  

  def destroy
    @valtest = Valtest.find(params[:id])
    @valtest.destroy
    redirect_to valtests_path
  end


  private
  def valtest_params
    params.require(:valtest).permit(:email, :email_confirmation, :name, :age, :password, :phone_number)
  end
end