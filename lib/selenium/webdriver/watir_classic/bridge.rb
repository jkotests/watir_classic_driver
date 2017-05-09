module Selenium
	module WebDriver
		module WatirClassic
			class Bridge < Remote::Bridge
				attr_accessor :http

				def initialize(opts = {})
					opts[:http_client] ||= ::Selenium::WebDriver::WatirClassic::Http.new

					super
				end
			end
		end
	end
end