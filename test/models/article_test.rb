require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
	def setup
		@article = Article.new(name: "Lorem ipsum", paper: "Dolorem", date: "2016-05-21", file: "article1.pdf")
	end

  test "Should be valid" do
  	assert @article.valid?
  end

  test "File should be present" do
  	@article.file = nil
  	assert_not @article.valid?
 	end

 	test "Name should be present" do
    @article.name = "   "
    assert_not @article.valid?
  end

  test "Paper should be present" do
    @article.paper = "   "
    assert_not @article.valid?
  end
end
