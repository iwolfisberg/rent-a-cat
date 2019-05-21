require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get myprofile" do
    get pages_myprofile_url
    assert_response :success
  end

end
