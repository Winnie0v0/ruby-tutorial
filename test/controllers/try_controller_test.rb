require "test_helper"

class TryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get try_index_url
    assert_response :success
  end
end
