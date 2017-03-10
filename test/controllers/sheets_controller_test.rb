require 'test_helper'

class SheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sheets_index_url
    assert_response :success
  end

end
