class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @projects = @user.projects
   @tasks = Task.all
   # @tasks = @user.tasks
   @users = User.all
  end

end