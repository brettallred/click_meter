require "click_meter/base"
require "click_meter/datapoint"
require "click_meter/version"
require "click_meter/account"
require "click_meter/account_plan"
require "click_meter/conversion"
require "click_meter/domain"
require "click_meter/account_domain_whitelist"
require "click_meter/account_ip_blacklist"
require "click_meter/click_stream"
require "click_meter/hit"
require "click_meter/tag"
require "click_meter/top_trend"
require "click_meter/group"
require "click_meter/aggregated_stat"
require "click_meter/account_guest"
require "active_rest_client"

module ClickMeter
  ::ActiveRestClient::Base.base_url = "http://apiv2.clickmeter.com"
  ::ActiveRestClient::Base.adapter = :net_http
end
