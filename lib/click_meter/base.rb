require "active_rest_client"
require "click_meter/configuration"

module ClickMeter
  class Base < ActiveRestClient::Base
    include Configuration

    before_request :add_authentication_details

    def self.inherited(klass)
      super
      klass.class_eval {
        after_request :debug_response
        request_body_type :json
      }
    end

    private

    def debug_response(method, response)
      return unless self.class.debug?
      puts "#{self.class}##{method}"
      puts "Status: #{response.status}"
      puts response.body
    end

    def add_authentication_details(name, request)
      #Add 'Content-Type' header, otherwise, the API does not see POST body.
      request.headers['Content-Type'] = 'application/json; charset=UTF-8'
      request.headers["X-Clickmeter-Authkey"] = self.class.auth_key.to_s
    end
  end
end
