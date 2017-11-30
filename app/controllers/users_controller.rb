class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @projects = Project.all
   @tasks = Task.all
  end

end