require "active_rest_client"
require "click_meter/configuration"

module ClickMeter
  class Base < ActiveRestClient::Base
    include Configuration

    before_request :add_authentication_details
    request_body_type :json

    private

    def add_authentication_details(name, request)
      request.headers["X-Clickmeter-Authkey"] = self.class.auth_key.to_s
    end
  end
end
