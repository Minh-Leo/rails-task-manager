# Task controller
class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :mark_completed]

  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  def mark_completed
    @task.completed = !@task.completed
    @task.save
    redirect_to tasks_path
  end

  # private from here
  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
