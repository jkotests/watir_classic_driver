module WatirClassicDriver
	class Session < RubyRemoteEnd::Session
		def self.initialize_browser
			BrowsingContext.new
		end
	end
end