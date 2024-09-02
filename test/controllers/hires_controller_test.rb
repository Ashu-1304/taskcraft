require "test_helper"

class HiresControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hires_create_url
    assert_response :success
  end
end
