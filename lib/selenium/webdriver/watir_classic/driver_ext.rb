module Selenium
	module WebDriver
		module WatirClassic
			module Driver
				def for(browser, opts = {})
					return super unless browser == :watir_classic

					bridge = WatirClassic::Bridge.new(opts)
					new(bridge)
				end

				Selenium::WebDriver::Driver.singleton_class.prepend(self)
			end
		end
	end
end