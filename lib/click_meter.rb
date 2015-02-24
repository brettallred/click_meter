require "click_meter/version"
require "click_meter/account"
require "active_rest_client"

module ClickMeter
  ::ActiveRestClient::Base.base_url = "http://apiv2.clickmeter.com"
end
