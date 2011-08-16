class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.user_id = session[:user_id]
    if @task.save
      redirect_to today_path, :notice => "Task saved!"
    else
      render "new"
    end
  end
end
