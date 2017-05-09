module WatirClassicDriver
	class BrowsingContext
		attr_reader :browser

		def initialize
			@browser = Watir::Browser.new
		end

		def goto(url)
			browser.goto(url)
		end

		def element(location_strategy, selector)
			Element.new(browser.element(normalize_location_strategy(location_strategy), selector))
		end

		def close
			browser.close
		end

		private

		def normalize_location_strategy(location_strategy)
			return :class if location_strategy == 'class name'
			location_strategy
		end
	end
end