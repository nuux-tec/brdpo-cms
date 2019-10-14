class Api::CoursesController < ApiController
  def index
    @courses = Course.published
  end

  def show
    @course = Course.find(params[:id])
  end
end
