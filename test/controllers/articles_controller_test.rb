require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  
  def setup
    @article = articles(:BusinessArticle)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Articles"
  end

  test "should get show" do
    get :show, id: @article
    assert_response :success
    assert_select "title", "Article" #change to real article Title
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "Upload article"
  end

  # test "should get create" do
  #   get :create
  #   assert_response :success
  # end

end
