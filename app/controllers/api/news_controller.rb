class Api::NewsController < ApiController
  def index
    @news = News.published
  end

  def show
    @news = News.find(params[:id])
  end
end
