class Api::CoursesController < ApiController
  def index
    @courses = Course.published

    if params[:limit]
      @courses = @courses.limit(params[:limit])
    end
  end

  def show
    @course = Course.find(params[:id])
  end
end
