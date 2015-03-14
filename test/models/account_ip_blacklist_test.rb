require 'test_helper'

class AccountIpBlacklistTest < ActiveSupport::TestCase

  test 'all' do
    response = with_vcr -> { ClickMeter::AccountIpBlacklist.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'create' do
    response = with_vcr -> { ClickMeter::AccountIpBlacklist.create(:ip => '127.0.0.10') }
    assert_status_ok response
    assert_equal response.ip, '127.0.0.10'
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::AccountIpBlacklist.destroy(:hash => 'F528764D624DB129B32C21FBCA0CB8D6') }
    assert_status_ok response
    assert_equal response.ip, '127.0.0.1'
  end

end