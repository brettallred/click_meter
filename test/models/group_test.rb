require 'test_helper'

class GroupTest < ActiveSupport::TestCase

  test 'all' do
    response = with_vcr -> { ClickMeter::Group.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'find' do
    response = with_vcr -> { ClickMeter::Group.find(:id => 189630) }
    assert_status_ok response
    assert_equal response.id, 189630
  end

  test 'count' do
    response = with_vcr -> { ClickMeter::Group.count }
    assert_status_ok response
    assert_respond_to response, :count
  end

  test 'create' do
    response = with_vcr -> { ClickMeter::Group.create(:name => 'group10', :preferred => false, :tags => [{:name => "tag10"}])  }
    assert_status_ok response
    assert_respond_to response, :id
  end

  test 'save' do
    response = with_vcr -> { ClickMeter::Group.save(:id => 189630, :name => 'someGroup') }
    assert_status_ok response
    assert_equal response.id, 189630
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::Group.destroy(:id => 191837) }
    assert_status_ok response
    assert_equal response.id, 191837
  end

  test 'datapoint' do
    attrs = {
        :id => 189630,
        :groupId => 189630,
        :name => 'someDatapoint2',
        :title => 'datapoint_2',
        :type => 0,
        :typeTL => {
            :domainId => 1921,
            :redirectType => 301,
            :url => 'http://example.com'
        }
    }
    response = with_vcr -> { ClickMeter::Group.datapoint(attrs) }
    assert_status_ok response
  end

  test 'datapoints' do
    response = with_vcr -> { ClickMeter::Group.datapoints(:id => 189630) }
    assert_status_ok response
    assert_respond_to response, :entities
  end

end