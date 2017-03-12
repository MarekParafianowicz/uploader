class ArticlePresenter < BasePresenter
  def content
    model.paper.blank? ? "No content provided" : model.paper
  end

  def picture
    model.file.blank? ? "No picture provided" : h.image_tag(model.file.thumb.url.to_s)
  end
end
