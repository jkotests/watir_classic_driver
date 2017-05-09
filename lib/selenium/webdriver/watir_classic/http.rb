module Selenium
	module WebDriver
		module WatirClassic
			class Http < Remote::Http::Default
				def new_http_client
					RubyRemoteEnd::RemoteEnd.new(::WatirClassicDriver, server_url.path)
				end
			end
		end
	end
end