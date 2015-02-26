require 'forwardable'
module ClickMeter
	module Configuration

    def self.included(base)
      base.extend(ClassMethods)
    end

    class Config
      extend SingleForwardable

      delegate [:auth_key, :debug, :auth_key=, :debug=, :debug?] => :instance

      attr_accessor :auth_key, :debug

      class<< self
        def instance
          @_instance ||= new
        end
        private :new
      end

      def initialize
        @auth_key = nil
        @debug    = false
      end

      alias_method :debug?, :debug

    end

    module ClassMethods

      extend Forwardable
      def_delegators :"ClickMeter::Configuration::Config", :auth_key, :debug, :auth_key=, :debug=, :debug?

    end
	end
end
