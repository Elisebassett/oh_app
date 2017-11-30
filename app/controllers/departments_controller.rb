class DepartmentsController < ApplicationController
  
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
    @project = Project.all
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
    @department = Department.find(params[:id])
    @department.update(department_params)

    redirect_to @department
  end

  def destroy

    @department = Department.find(params[:id]).destroy
    respond_to do |format|
      format.html {redirect_to departments_path}
    end
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end
