require "test_helper"

class Website1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get website1_index_url
    assert_response :success
  end
end
