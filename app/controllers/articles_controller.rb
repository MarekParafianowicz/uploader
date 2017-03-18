class ArticlesController < ApplicationController

  def index
    @articles = ArticlesPresenter.new(articles: Article.all, view_context: view_context).articles
  end

  def show
    @article = ArticlePresenter.new(model: Article.find(params[:id]), view: view_context)
  end

  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_url
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to root_path
  end

  private

    def article_params
      params.require(:article).permit(:name, :paper, :file, :remote_file_url)
    end

end
