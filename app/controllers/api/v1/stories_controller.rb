class Api::V1::StoriesController < Api::V1::BaseController
  before_action :find_story, only: %i[show destroy]

  def index
    @stories = Story.all
    # render json: {stories: @stories}
  end

  def create
    @story = Story.create(permitted_params)
    # render json: {message: "Story created"}
  end

  def show

  end

  def destroy
    @story.destroy
  end

  private

  def find_story
    @story = Story.find(params[:id])
  end


  def permitted_params
    params.require(:story).permit(:name, :text)
  end
end
