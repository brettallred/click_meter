require 'test_helper'

class TagTest < ActiveSupport::TestCase

  test 'all' do
    response = with_vcr -> { ClickMeter::Tag.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'find' do
    response = with_vcr -> { ClickMeter::Tag.find(:id => 20518) }
    assert_status_ok response
    assert_equal response.id, 20518
  end

  test 'count' do
    response = with_vcr -> { ClickMeter::Tag.count }
    assert_status_ok response
    assert_respond_to response, :count
  end

  test 'create' do
    response = with_vcr -> { ClickMeter::Tag.create(:name => 'tag2') }
    assert_status_ok response
    assert_respond_to response, :id
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::Tag.destroy(:id => 20518) }
    assert_status_ok response
    assert_equal response.id, 20518
  end

  test 'datapoint' do
    tag_id = 21018
    datapoint_id = 2027508
    action = 'add'
    response = with_vcr -> { ClickMeter::Tag.datapoint(:id => tag_id, 'id' => datapoint_id, :action => action) }
    assert_status_ok response
    assert_equal response.id, datapoint_id
  end

  test 'group' do
    tag_id = 21018
    group_id = 194875
    action = 'add'
    response = with_vcr -> { ClickMeter::Tag.group(:id => tag_id, 'id' => group_id, :action => action) }
    assert_status_ok response
    assert_equal response.id, group_id
  end

  test 'datapoints' do
    response = with_vcr -> { ClickMeter::Tag.datapoints(:id => 21018) }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'groups' do
    response = with_vcr -> { ClickMeter::Tag.groups(:id => 21018) }
    assert_status_ok response
    assert_respond_to response, :entities
  end

end