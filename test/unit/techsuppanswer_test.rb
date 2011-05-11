require 'test_helper'

class TechsuppanswerTest < ActiveSupport::TestCase

  test "validate techsupport answers" do

    ta = Techsuppanswer.new

    #validating with empty values
    assert !ta.save

    #validating with name
    ta.answer = "some answer here entered by the user"
    assert !ta.save

    #validating with name, question_id
    q = Techsuppquestions.new
    q.question = "a funny question here"
    q.save
    ta.techsuppquestions_id = q.id
    assert ta.save


  end

end
