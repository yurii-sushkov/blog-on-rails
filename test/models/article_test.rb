require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save an empty article" do
    article = Article.new
    assert_not article.save, "Saved an empty article"
  end
end
