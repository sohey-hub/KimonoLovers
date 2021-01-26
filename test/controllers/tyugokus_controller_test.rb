require 'test_helper'

class TyugokusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tyugokus_index_url
    assert_response :success
  end

end
