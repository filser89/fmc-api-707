class Api::V1::StoriesController < Api::V1::BaseController
  def index
    @stories = Story.all
    # render json: {stories: @stories}
  end

  def create
    @story = Story.create(permitted_params)
    # render json: {message: "Story created"}
  end

  private

  def permitted_params
    params.require(:story).permit(:name, :text)
  end
end
