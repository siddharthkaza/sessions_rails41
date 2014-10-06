require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get get_visit_time" do
    get :get_visit_time
    assert_response :success
  end

  test "should get set_visit_time" do
    get :set_visit_time
    assert_response :success
  end

end
