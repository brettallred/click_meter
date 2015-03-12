require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test 'take' do
    response = with_vcr -> { ClickMeter::Account.take }
    assert_status_ok response
    assert_equal response.to_hash.keys.to_set,
                 ["email", "firstName", "registrationDate", "timezone", "timezonename", "boGoVal"].to_set,
                 'Mandatory fields must be present'
  end

  test 'save' do
    response = with_vcr -> { ClickMeter::Account.save(:firstName => 'Brett', :timezone => 82) }
    assert_status_ok response
    assert_equal response.to_hash.keys.to_set,
                 ["email", "firstName", "registrationDate", "timezone", "timezonename", "boGoVal"].to_set,
                 'Mandatory fields must be present'
  end
end