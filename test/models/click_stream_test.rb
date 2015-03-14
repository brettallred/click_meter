require 'test_helper'

class ClickStreamTest < ActiveSupport::TestCase

  test 'find' do
    response = with_vcr -> { ClickMeter::ClickStream.find }
    assert_status_ok response
    assert_respond_to response, :rows
  end

end