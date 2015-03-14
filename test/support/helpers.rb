class ActiveSupport::TestCase
  include WebMock::API

  def with_vcr(block)
    VCR.use_cassette("#{self.class.to_s.parameterize}_#{method_name}", &block)
  end

  def assert_status_ok(response)
    assert_equal response._status, 200, "Response must return status 200. Returned - #{response._status}"
  end

  def pending(message = nil)
    assert false, "\e[33m#{message}\e[0m"
  end

end