require 'test_helper'

class DatapointTest < ActiveSupport::TestCase

  test 'all' do
    response = with_vcr -> { ClickMeter::Datapoint.all }
    assert_status_ok response
    assert_respond_to response, :entities
  end

  test 'count' do
    response = with_vcr -> { ClickMeter::Datapoint.count }
    assert_status_ok response
    assert_respond_to response, :count
  end

  test 'create' do
    attrs = {
        :groupId => 192071,
        :name => 'someDatapoint',
        :title => 'datapoint_1',
        :type => 0,
        :typeTL => {
            :domainId => 1921,
            :redirectType => 301,
            :url => 'http://example.com'
        }
    }
    response = with_vcr -> { ClickMeter::Datapoint.create(attrs) }
    assert_status_ok response
    assert_respond_to response, :id
  end

  test 'find' do
    response = with_vcr -> { ClickMeter::Datapoint.find(:id => 2041589) }
    assert_status_ok response
    assert_equal response.id, 2041589
  end

  test 'destroy' do
    response = with_vcr -> { ClickMeter::Datapoint.destroy(:id => 2027645) }
    assert_status_ok response
    assert_equal response.id, 2027645
  end

  test 'save' do
    attrs = {
        :groupId => 192071,
        :name => 'someDatapoint3',
        :title => 'datapoint_3',
        :type => 0,
        :id => 2041589,
        'id' => 2041589,
        :typeTL => {
            :domainId => 1921,
            :redirectType => 301,
            :url => 'http://example.com'
        }
    }
    response = with_vcr -> { ClickMeter::Datapoint.save(attrs) }
    assert_status_ok response
    assert_equal response.id, 2041589
  end

  test 'create_batch' do
    attrs = {
        :list => [
            {
              :groupId => 192071,
              :name => 'someDatapoint4',
              :title => 'datapoint_4',
              :type => 0,
              :typeTL => {
                  :domainId => 1921,
                  :redirectType => 301,
                  :url => 'http://example.com'
              }
            }
        ]
    }
    response = with_vcr -> { ClickMeter::Datapoint.create_batch(attrs) }
    assert_status_ok response
    assert_respond_to response, :results
  end

  test 'destroy_batch' do
    pending "Works with errors - could not clarify what format of request arguments must be."

    attrs = {:entities => [{:id => 2028437}, {:id => 2027575}]}
    response = with_vcr -> { ClickMeter::Datapoint.destroy_batch(attrs) }
    assert_status_ok response
    assert_respond_to response, :results
  end

  test 'save_batch' do
    attrs = {
        :list => [
            {
                :groupId => 192071,
                :name => 'someDatapoint3',
                :title => 'datapoint_3',
                :type => 0,
                :id => 2041589,
                'id' => 2041589,
                :typeTL => {
                    :domainId => 1921,
                    :redirectType => 301,
                    :url => 'http://example.com'
                }
            }
        ]
    }
    response = with_vcr -> { ClickMeter::Datapoint.save_batch(attrs) }
    assert_status_ok response
    assert_respond_to response, :results
  end

end