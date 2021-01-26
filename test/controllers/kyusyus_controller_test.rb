require 'test_helper'

class KyusyusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kyusyus_index_url
    assert_response :success
  end

end
