ClickMeter::Base.auth_key = ENV["KEY"]
if ENV["DEBUG"]
  ClickMeter::Base.debug = true
  ActiveRestClient::Logger.logfile = 'debug.txt'
  ClickMeter.constants.each do |const|
    klass = "ClickMeter::#{const}".constantize
    if klass.respond_to?(:verbose!)
      klass.verbose!
    end
  end
end
