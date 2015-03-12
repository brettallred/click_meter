require 'test_helper'

class TopTrendTest < ActiveSupport::TestCase

  test 'conversion' do
    pending "Returns 403 with no message"
    response = with_vcr -> { ClickMeter::TopTrend.conversion(:id => 7730, :timeframe => 'last7', :type => 'TL') }
    assert_status_ok response
    assert_respond_to response, :data
  end

  test 'datapoint' do
    pending "Returns 404 with no message"
    response = with_vcr -> { ClickMeter::TopTrend.datapoint(:id => 2027575, :timeframe => 'last7', :type => 'browsers') }
    assert_status_ok response
    assert_respond_to response, :data
  end

  test 'group' do
    pending "Returns 404 with no message"
    response = with_vcr -> { ClickMeter::TopTrend.group(:id => 189628, :timeframe => 'last7', :type => 'browsers') }
    assert_status_ok response
    assert_respond_to response, :data
  end

  test 'customer' do
    pending "Returns 403 with no message"
    response = with_vcr -> { ClickMeter::TopTrend.customer(:timeframe => 'last7', :type => 'browsers') }
    assert_status_ok response
    assert_respond_to response, :data
  end

end