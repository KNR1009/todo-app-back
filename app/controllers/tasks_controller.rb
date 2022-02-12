class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  def create
    task = Task.new(task_params)
    if task.save
      render json: {id: task.id, title: task.title, tag: task.tag, tag_name: task.tag_name, created_at: task.created_at, update_at: task.updated_at}
    else 
      render json: {message: "保存できませんでした", errors: task.errors.messages}
    end
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
    params.permit(:title, :tag, :tag_name)
  end
  
end
