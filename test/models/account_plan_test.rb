require 'test_helper'

class AccountIpBlacklistTest < ActiveSupport::TestCase
  test 'take' do
    response = with_vcr -> { ClickMeter::AccountPlan.take }
    assert_status_ok response
    assert_equal response.to_hash.keys.to_set,
                 ["name", "recurring", "recurringPeriod", "maximumDatapoints", "maximumGuests", "usedDatapoints",
                  "monthlyEvents", "profileId", "billingPeriodStart", "billingPeriodEnd", "allowedPersonalUrls",
                  "allowedPersonalDomains"].to_set,
                 'Mandatory fields must be present'
  end
end