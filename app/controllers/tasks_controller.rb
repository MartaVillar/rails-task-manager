class TasksController < ApplicationController

  def list
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @new_task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to list_path
  end

  def update
    @task = Task.find(params[:id]
    @task.update(task_params)
    redirect_to list_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail)
  end
end
