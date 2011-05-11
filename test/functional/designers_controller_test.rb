require 'test_helper'

class DesignersControllerTest < ActionController::TestCase
  setup do
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(@designer)
  end

  test "should create designer" do

    # intially try with an invalid parameters
    designer = designers(:one)
    assert_no_difference('Designer.count') do
      post :create, :designer => designer.attributes
    end
    assert_not_nil designer.errors

    designer = designers(:two)
    Designer.find_by_email(designer.email).destroy
    assert_difference('Designer.count') do
      post :create, :designer => designer.attributes
    end
   
  end

  test "will it redirect to index" do
    get :success
    assert_redirected_to :action => "index"
  end

  test "will redirect to index" do
    get :show
    assert_redirected_to :action => "index"
  end
end
