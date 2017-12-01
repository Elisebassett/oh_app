class DepartmentsController < ApplicationController
  
  def index
    @departments = Department.includes(:projects).references(:projects).all
    @users = User.all
  end

  def show
    @department = Department.find(params[:id])
    @projects = @department.projects.all
    @project_new = Project.new
    @users = User.all

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
    redirect_to @department
  end

  def update
    @department = Department.find(params[:id])
    @department.update(department_params)

    redirect_to @department
  end

  def destroy
    @department = Department.find(params[:id]).destroy
    respond_to do |format|
      format.js
      format.html {redirect_to departments_path}
    end
  end

  private

  def department_params
    params.require(:department).permit(:name, :id)
  end
end
