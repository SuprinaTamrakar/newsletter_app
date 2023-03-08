require "test_helper"

class NewslettersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsletters_index_url
    assert_response :success
  end

  test "should get show" do
    get newsletters_show_url
    assert_response :success
  end

  test "should get new" do
    get newsletters_new_url
    assert_response :success
  end

  test "should get edit" do
    get newsletters_edit_url
    assert_response :success
  end
end
