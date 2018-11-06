require 'test_helper'

class BubotBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bubot_blog = bubot_blogs(:one)
  end

  test "should get index" do
    get bubot_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_bubot_blog_url
    assert_response :success
  end

  test "should create bubot_blog" do
    assert_difference('BubotBlog.count') do
      post bubot_blogs_url, params: { bubot_blog: { content: @bubot_blog.content, title: @bubot_blog.title } }
    end

    assert_redirected_to bubot_blog_url(BubotBlog.last)
  end

  test "should show bubot_blog" do
    get bubot_blog_url(@bubot_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_bubot_blog_url(@bubot_blog)
    assert_response :success
  end

  test "should update bubot_blog" do
    patch bubot_blog_url(@bubot_blog), params: { bubot_blog: { content: @bubot_blog.content, title: @bubot_blog.title } }
    assert_redirected_to bubot_blog_url(@bubot_blog)
  end

  test "should destroy bubot_blog" do
    assert_difference('BubotBlog.count', -1) do
      delete bubot_blog_url(@bubot_blog)
    end

    assert_redirected_to bubot_blogs_url
  end
end
