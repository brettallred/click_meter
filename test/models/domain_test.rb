require 'test_helper'

class DomainTest < ActiveSupport::TestCase

  test 'create' do
    response = with_vcr -> { ClickMeter::Domain.create(:name => 'domain10.com', :type => 'system') }
    assert_status_ok response
    assert_respond_to response, :id
  end

  test 'all' do
    response = with_vcr -> { ClickMeter::Domain.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::Domain.destroy(:id => 2142) }
    assert_status_ok response
    assert_equal response.id, 2142
  end

  test 'find' do
    response = with_vcr -> { ClickMeter::Domain.find(:id => 1921) }
    assert_status_ok response
    assert_equal response.id, 1921
  end

  test 'save' do
    pending "Throws odd error - 'Specified domain name is already used' on 'id' property"
    response = with_vcr -> { ClickMeter::Domain.save(:id => 1921, :name => 'domain11.com', :type => 'system') }
    assert_status_ok response
    assert_equal response.id, 1921
  end

  test 'count' do
    response = with_vcr -> { ClickMeter::Domain.count }
    assert_status_ok response
    assert_respond_to response, :count
  end

end