#created by Moyseenko Sergey
#class use yandex API
require './connect'
require './response_error'
require './error_handler'

class YandexTranslate
	def get_langs(lang = 'en')
		data = {"ui" => lang}
		parsed = Connect.new.get('getLangs', data)
		return ErrorHandler.new(parsed)
	end

	def detect(text)
		data = {"text" => text}
		return Connect.new.get('detect', data)
	end

	def translate(text, lang = 'ru', format = 'plain')
		data = {"text" => text, "lang" => lang, "format" => format}
		return Connect.new.get('translate', data)
	end
end

puts YandexTranslate.new.get_langs #translate('It was a beautiful day to you and me')
#Yandex_translate.new.detect('Hello world')
#Yandex_translate.new.translate('She was a young and cute')
#test={"langs" => 'en', 'bang' => "tears"}
#print test.keys