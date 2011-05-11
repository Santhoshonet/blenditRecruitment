require 'test_helper'
class TechnicalspecialistTest < ActiveSupport::TestCase
  test "validate Technical specialists model" do

    #validating with empty values
    ts = Technicalspecialist.new
    assert !ts.save

    #validating with name
    ts.name = "some name here"
    assert !ts.save

    #validating with name,email
    ts.email = "santhoshonet@gmail.com"
    assert ts.save # proper values here

    #validating email format
    ts.email = "sadfgsadf"
    assert !ts.save

    ts.email = "sdafgsdafg@dsfg"
    assert !ts.save

    ts.email = "sadfsadf@efg."
    assert !ts.save

    # validating with new email id
    ts.email = "santhoshonet@yahoo.co.in"
    assert ts.save

  end
end
