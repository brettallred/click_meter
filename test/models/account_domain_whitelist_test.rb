require 'test_helper'

class AccountDomainWhitelistTest < ActiveSupport::TestCase

  test 'all' do
    response = with_vcr -> { ClickMeter::AccountDomainWhitelist.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'create' do
    response = with_vcr -> { ClickMeter::AccountDomainWhitelist.create(:name => 'www.github.com') }
    assert_status_ok response
    assert_equal response.name, 'www.github.com'
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::AccountDomainWhitelist.destroy(:hash => 'D85B3E68C422CCFCF1EAB58B6D8DFAD0') }
    assert_status_ok response
  end

end