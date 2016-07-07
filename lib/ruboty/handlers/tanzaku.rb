require_relative "../actions/tanzaku.rb"


module Ruboty module Handlers
	class Tanzaku < Base
		on(
			/tanzaku (?<negai>.+)/,
			name: "tanzaku",
			description: "tanzaku",
		)
		def tanzaku message
			Ruboty::Actions::Tanzaku.new(message).call
		end
	end
end end
