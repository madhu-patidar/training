class EmployeesController < ApplicationController
  
  def index
    @employees = Employee.all
    
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def new
     @employee = Employee.new
  end

  def update
    @employee = Employee.find(params[:id])
   
    if @employee.update(params.require(:employee).permit(:name, :designation,:salary,:city))
      redirect_to @employee
    else
      render 'edit'
    end

  end
  def create
    @employee = Employee.new(params.require(:employee).permit(:name, :designation,:salary,:city))
    @employee.save
    redirect_to @employee
  end

   def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

end
