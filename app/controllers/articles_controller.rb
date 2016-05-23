class ArticlesController < ApplicationController


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  	# @article = Article.new
  end

  def create
  end

  # private
  
  #   def article_params
  #     params.require(:article).permit(:name, :paper, :file, :date)
  #   end
	
end
