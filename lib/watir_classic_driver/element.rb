module RubyRemoteEnd
	module WatirClassic
		class Element
			attr_reader :native

			def initialize(native)
				@native = native.to_subtype
			end

			def exists?
				native.exists?
			end

			def ole_object
				native.ole_object
			end

			def attribute_value(attr)
				native.attribute_value(attr)
			end

			def tag_name
				native.tag_name
			end

			def text
				native.text
			end

			def click
				native.click
			end

			def enabled?
				native.enabled?
			end
		end
	end
end