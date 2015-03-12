require 'test_helper'

class AccountGuestTest < ActiveSupport::TestCase
  test 'all' do
    response = with_vcr -> { ClickMeter::AccountGuest.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'find' do
    response = with_vcr -> { ClickMeter::AccountGuest.find(:id => '258231') }
    assert_status_ok response
    assert_equal response.to_hash.keys.to_set,
                 ["apiKey", "id", "name", "password", "email", "timeZone", "notes", "key", "language",
                  "dateFormat", "timeFormat", "decimalSeparator", "numberGroupSeparator", "userName",
                  "extendedGrants", "groupGrants"].to_set,
                 'Mandatory fields must be present'
  end

  test 'permission' do
    guest_id = 258148
    type = 'group'
    group_id = 189630
    verb = 'rw' # could be 'r' or 'rw'
    action = 'add' #could be 'add' or 'remove'
    response = with_vcr -> {
      ClickMeter::AccountGuest.permission(
          :id => guest_id, :type => type, :action => action, 'id' => group_id, :verb => verb
      )
    }
    assert_status_ok response
    assert_equal response.id, 189630
  end

  test 'permissions' do
    response = with_vcr -> {
      ClickMeter::AccountGuest.permissions(:id => 258148)
    }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'destroy' do
    pending "Not implemented, changed or removed in ClickMeter's API2"
    response = with_vcr -> {
      ClickMeter::AccountGuest.destroy(:id => 258148)
    }
    assert_status_ok response
  end

end