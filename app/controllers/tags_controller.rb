class TagsController < ApplicationController
  def index
    tags = Tag.all
    render json: tags
  end

  def create
    Tag.create(tag_params)
    render json:{message: "タグの新規作成をしました"}
  end

  private

  def tag_params
    params.permit(:name)
  end
end
