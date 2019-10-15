class Api::NewsController < ApiController
  def index
    @news = News.published

    if params[:limit]
      @news = @news.limit(params[:limit])
    end
  end

  def show
    @news = News.find(params[:id])
  end
end
