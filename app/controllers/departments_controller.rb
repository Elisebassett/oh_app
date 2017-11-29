class DepartmentsController < ApplicationController
  def index
    @department = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.create(department_params)
    redirect_to @department
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.update(department_params)
    redirect_to @department
  end

  def destroy
    Department.find(params[:id]).destroy
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end
