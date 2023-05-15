require "test_helper"

class MopedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mopeds_index_url
    assert_response :success
  end

  test "should get show" do
    get mopeds_show_url
    assert_response :success
  end
end
