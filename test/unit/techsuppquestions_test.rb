require 'test_helper'
class TechsuppquestionsTest < ActiveSupport::TestCase

  test "validate tech support questions" do

    tsq = Techsuppquestions.new

    #validating with empty values
    assert !tsq.save

    #validating with question
    tsq.question = "some nice question here"
    assert tsq.save

  end

end
