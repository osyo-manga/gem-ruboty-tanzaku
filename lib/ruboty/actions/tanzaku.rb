module Ruboty module Actions
	class Tanzaku < Base
		def call
			message.reply to_tanzaku message[:negai]
		end

		private
		def half_to_full(str)
			str.tr('0-9a-zA-Zー\- 。、', '０-９ａ-ｚＡ-Ｚ｜｜　︒︑')
		end

		def to_tanzaku text
			body = half_to_full(text).split(//).map { |c| "┃" + c + "┃\n" }.join
			"┏┷☆\n" + body + "★━┛"
		end
	end
end end
