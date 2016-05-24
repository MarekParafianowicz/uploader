class ArticlesController < ApplicationController


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
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
      params.require(:article).permit(:name, :paper, :file)
    end
	
end
