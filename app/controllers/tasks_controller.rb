class TasksController < ApplicationController

  def create
    respond_to do |format|
      @task = Task.new(task_params)
      format.js
      format.html
      assign_users
    end
  end

  def update
  	respond_to do |format|
	  	@task = Task.find(params[:id])
      @task.update(task_params)
      @task.users.destroy_all
      assign_users
	  	if @task.save!
	  		format.html {redirect_to project_path(project)}
	  		format.js
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
    @task = Task.find(params[:id])
    @task.update(complete: params[:complete])
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
