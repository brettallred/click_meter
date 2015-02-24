module ClickMeter
	module Configuration

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      @@auth_key = nil

      def auth_key
        @@auth_key 
      end

      def auth_key=(value = nil)
        @@auth_key = value
      end
    end
	end
end
