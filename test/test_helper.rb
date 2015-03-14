require 'click_meter'
require 'minitest/autorun'
require 'minitest/pride'
require 'webmock'
require 'vcr'

ActiveSupport::TestCase.test_order = :random
WebMock.disable_net_connect!(:allow_localhost => true)

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
require "#{File.dirname(__FILE__)}/../debug_settings"

VCR.configure do |c|
  c.cassette_library_dir = File.join(File.dirname(__FILE__), '..', 'test', 'fixtures', 'cassettes')
  c.default_cassette_options = { record: :new_episodes, decode_compressed_response: true, serialize_with: :json, preserve_exact_body_bytes: true }
  c.hook_into :webmock
end