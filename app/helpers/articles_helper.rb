module ArticlesHelper

  def content(article)
    article.paper.blank? ? "No content provided" : article.paper
  end

  def picture(article)
    article.file.blank? ? "No picture provided" : image_tag(article.file.thumb.url.to_s)
  end
end
