class ArticlesPresenter
  def initialize(articles:, view_context:)
    @articles = articles
    @view_context = view_context
  end

  def articles
    @articles.map do |article|
      ArticlePresenter.new(model: article, view: @view_context)
    end
  end
end
