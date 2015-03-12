require 'test_helper'

class ConversionTest < ActiveSupport::TestCase

  test 'create' do
    response = with_vcr -> { ClickMeter::Conversion.create(:description => 'someDesc', :name => 'someName') }
    assert_status_ok response
    assert_respond_to response, :id
  end

  test 'all' do
    response = with_vcr -> { ClickMeter::Conversion.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::Conversion.destroy(:id => 7719) }
    assert_status_ok response
    assert_equal response.id, 7719
  end

  test 'find' do
    response = with_vcr -> { ClickMeter::Conversion.find(:id => 7730) }
    assert_status_ok response
    assert_equal response.id, 7730
  end

  test 'save' do
    response = with_vcr -> { ClickMeter::Conversion.save(:id => 7730, :name => 'conv2') }
    assert_status_ok response
    assert_equal response.id, 7730
  end

  test 'count' do
    response = with_vcr -> { ClickMeter::Conversion.count }
    assert_status_ok response
    assert_respond_to response, :count
  end

  test 'datapoint' do
    conversion_id = 7730
    datapoint_id  = 2027575
    action = 'add'
    response = with_vcr -> { ClickMeter::Conversion.datapoint(:id => conversion_id, :action => action, 'id' => datapoint_id) }
    assert_status_ok response
    assert_equal response.id, 7730
  end

  test 'datapoints' do
    response = with_vcr -> { ClickMeter::Conversion.datapoints(:id => 7730) }
    assert_status_ok response
    assert_respond_to response, :entities
  end

end