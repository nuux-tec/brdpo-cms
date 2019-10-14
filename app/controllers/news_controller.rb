class NewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_news, only: [:show, :edit, :update, :destroy, :publish, :disable]

  def index
    @news = News.all
  end

  def show
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to news_index_path, notice: 'A notícia foi criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to news_index_path, notice: 'A notícia foi atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def publish
    respond_to do |format|
      @news.publish

      format.html { redirect_to news_index_path, notice: 'A notícia foi publicada com sucesso.' }
    end
  end

  def disable
    respond_to do |format|
      @news.disable

      format.html { redirect_to news_index_path, notice: 'A notícia foi desativada com sucesso.' }
    end
  end

  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title, :content)
    end
end
