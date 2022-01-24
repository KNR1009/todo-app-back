class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  def create
    Task.create(task_params)
    render json: {message: "新規作成しました"}
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    render json: {message: "削除しました"}
  end


  def show
    task = Task.find(params[:id])
    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    render json: {message: "更新しました"}
  end

  private

  def task_params
    params.permit(:title, :tag)
  end
  
end
