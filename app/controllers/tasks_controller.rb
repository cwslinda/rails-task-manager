class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

private
  def task_params
      params.require(:task).permit(:title, :details, :completed)
  end
end
