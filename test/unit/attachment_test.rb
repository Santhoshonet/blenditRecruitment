require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase

  test "validate attachment" do

    # validating the attachment
    att = Attachment.new
    att.save
    assert_not_nil att.id

  end

end