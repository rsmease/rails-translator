require 'httparty'

def translated(input_text, output_language)
	translated = HTTParty.get("https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=#{output_language}&dt=t&q=#{input_text}").parsed_response[0][0][0]
	return translated
end

# bonsoir_url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=fr&dt=t&q=Good Evening"
# response = HTTParty.get(bonsoir_url)
# p response.parsed_response[0][0][0]

puts translated("Hello, Vasili", "es")

