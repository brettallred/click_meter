require "click_meter/base"
require "click_meter/datapoint"
require "click_meter/version"
require "click_meter/account"
require "click_meter/account_plan"
require "click_meter/conversion"
require "click_meter/domain"
require "active_rest_client"

module ClickMeter
  ::ActiveRestClient::Base.base_url = "http://apiv2.clickmeter.com"
  ::ActiveRestClient::Base.adapter = :net_http
end
