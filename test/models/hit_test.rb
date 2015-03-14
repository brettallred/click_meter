require 'test_helper'

class HitTest < ActiveSupport::TestCase

  test 'conversion' do
    response = with_vcr -> { ClickMeter::Hit.conversion(:id => 7730, :timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :hits
  end

  test 'customer' do
    response = with_vcr -> { ClickMeter::Hit.customer(:timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :hits
  end

  test 'datapoint' do
    response = with_vcr -> { ClickMeter::Hit.datapoint(:id => 2027534, :timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :hits
  end

  test 'group' do
    response = with_vcr -> { ClickMeter::Hit.group(:id => 194875, :timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :hits
  end

end