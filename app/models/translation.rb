require 'httparty'

def translated(input_text, output_language)
	translated = HTTParty.get("https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=#{output_language}&dt=t&q=#{input_text}").parsed_response[0][0][0]
	return translated
end

class Translation < ApplicationRecord
	attr_accessor :language
end
