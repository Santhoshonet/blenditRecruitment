require 'test_helper'
class TechnicalspecialistsControllerTest < ActionController::TestCase
  setup do
    require "csv"
    # Adding existing links from csv
    CSV.open("questions.txt","rb").each do |row|
      q = Techsuppquestions.new
      q.question = row[0]
      q.save
    end
  end
  # Replace this with your real tests.
  test "will get the index" do
    get :index
    assert_response :success
  end

  test "will it create a record" do
    require "csv"
    # Adding existing links from csv
    Techsuppquestions.destroy_all
    CSV.open("questions.txt","rb").each do |row|
      q = Techsuppquestions.new
      q.question = row[0]
      q.save
    end
    techsupp = technicalspecialists(:one)
    assert_no_difference('Technicalspecialist.count') do
      post :create , techsupp.attributes
      assert_not_nil(@technicalspecialist.errors)
      assert_not_nil(@questions)
    end
    techsupp = technicalspecialists(:two)
    assert_difference('Technicalspecialists.count') do
      post :create , techsupp.attributes
      assert_redirect_to :action => "success"
    end
    assert_equal flash[:notice] , "Record was successfully created."
  end
end
