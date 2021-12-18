require 'test_helper'

class OriginalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get originals_index_url
    assert_response :success
  end

end
