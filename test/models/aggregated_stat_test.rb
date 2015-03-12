require 'test_helper'

class AggregatedStatTest < ActiveSupport::TestCase
  test 'conversion' do
    response = with_vcr -> { ClickMeter::AggregatedStat.conversion(:id => 7719, :timeframe => 'last7') }
    assert_status_ok response
    assert_equal response.entityId, '7719'
  end

  test 'conversion_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.conversion_list(:id => 7719, :timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'conversions_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.conversions_list(:timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'datapoint' do
    response = with_vcr -> { ClickMeter::AggregatedStat.datapoint(:timeframe => 'last7', :id => 2027499) }
    assert_status_ok response
    assert_equal response.entityId, '2027499'
  end

  test 'datapoint_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.datapoint_list(:timeframe => 'last7', :id => 2027499) }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'datapoints_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.datapoints_list(:timeframe => 'last7', :type => 'TP') }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'group' do
    response = with_vcr -> { ClickMeter::AggregatedStat.group(:timeframe => 'last7', :id => 189630) }
    assert_status_ok response
    assert_equal response.entityId, '189630'
  end

  test 'group_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.group_list(:timeframe => 'last7', :id => 189630) }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'groups_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.groups_list(:timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'customer' do
    response = with_vcr -> { ClickMeter::AggregatedStat.customer(:timeframe => 'last7') }
    assert_status_ok response
  end

  test 'customer_list' do
    response = with_vcr -> { ClickMeter::AggregatedStat.customer_list(:timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :rows
  end

  test 'conversions_summary' do
    response = with_vcr -> { ClickMeter::AggregatedStat.conversions_summary(:timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :result
  end

  test 'datapoints_summary' do
    response = with_vcr -> { ClickMeter::AggregatedStat.datapoints_summary(:timeframe => 'last7', :type => 'tl') }
    assert_status_ok response
    assert_respond_to response, :result
  end

  test 'groups_summary' do
    response = with_vcr -> { ClickMeter::AggregatedStat.groups_summary(:timeframe => 'last7') }
    assert_status_ok response
    assert_respond_to response, :result
  end

  test 'group_summary' do
    pending "Doesn't work. Returns 'No route matches'"
    response = with_vcr -> { ClickMeter::AggregatedStat.group_summary(:timeframe => 'last7', :sortBy => ' totalclicks', :id => 191837) }
    assert_status_ok response
  end

end