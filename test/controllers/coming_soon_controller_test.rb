require "test_helper"

class ComingSoonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coming_soon_index_url
    assert_response :success
  end
end
