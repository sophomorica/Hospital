require 'test_helper'

class AppoinmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appoinments_index_url
    assert_response :success
  end

  test "should get new" do
    get appoinments_new_url
    assert_response :success
  end

end
