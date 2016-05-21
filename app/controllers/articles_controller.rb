class ArticlesController < ApplicationController


  def index
  	# @articles = Article.paginate(page: params[:page])
  end

  def show
  end

  def new
  	@article = Article.new
  end

  def create
  end

  private
  
    def article_params
      params.require(:article).permit(:name, :paper, :file, :date)
    end
	
end
