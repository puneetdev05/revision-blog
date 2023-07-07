require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "draft? return true for draft blog posts" do
    assert blog_posts(:draft).draft?
  end

  test "published? return false for draft blog posts" do
    refute blog_posts(:published).draft?
  end

  test "scheduled? return false for draft blog posts" do
    refute blog_posts(:scheduled).draft?
  end

  test "published? return true for published blog posts" do
    assert blog_posts(:published).published?
  end

  test "draft? return false for published blog posts" do
    refute blog_posts(:draft).published?
  end

  test "scheduled? return false for published blog posts" do
    refute blog_posts(:scheduled).published?
  end

  test "scheduled? return true for scheduled blog posts" do
    assert blog_posts(:scheduled).scheduled?
  end

  test "draft? return false for scheduled blog posts" do
    refute blog_posts(:draft).scheduled?
  end

  test "published? return false for scheduled blog posts" do
    refute blog_posts(:published).scheduled?
  end

end
