require 'test_helper'

class UfsControllerTest < ActionDispatch::IntegrationTest
  test "should get query" do
    get ufs_query_url
    assert_response :success
  end

end
