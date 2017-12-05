class TasksController < ApplicationController

  def create
    respond_to do |format|
      @task = Task.new(task_params)
      @users = User.all
      format.js
      format.html
      assign_users
    end
  end

  def update
    @users = User.all
  	respond_to do |format|
	  	@task = Task.find(params[:id])
      @project = @task.project
      @tasks = @project.tasks.all
      @task.update(task_params)
      @task.users.destroy_all
      assign_users
	  	if @task.save!
        format.js
	  		format.html {render project_path(project)}
	  	end
	  end
  end

  def destroy
    respond_to do |format|
      @task = Task.find(params[:id]).destroy
      format.js
      format.html{redirect_to @projects}
    end
  end

# toggle method is run when complete switch is clicked
  def toggle
    respond_to do |format|
      #toggle task
      @task = Task.find(params[:id])
      @task.update(complete: params[:complete])
      #add and subtract points from user
      if params[:complete] == "true"
        @task.users.each do |user|
          user.points += @task.points
          user.save
        end #loop
      else
        @task.users.each do |user|
          user.points -= @task.points
          user.save
        end #loop
      end #ifelse
      format.js
    end #respond_to
  end

  private

  def assign_users
    user_ids = params[:task][:user_ids]
    user_ids.each do |user_id|
      if !user_id.blank? 
        @task.users << User.find(user_id)
      else
      end
      if @task.save
      end
    end
  end

  def task_params
    params.require(:task).permit(:project_id, :name, :description, :deadline, :complete, :task_id, :points, :user_ids)
  end
end
