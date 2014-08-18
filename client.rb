#created by Moyseenko Sergey
#class use yandex API
require './connect'

module YandexTranslate
  class Client
    def get_langs(lang = 'en', key)
      data = {"ui" => lang}
      return YandexTranslate::Connect.new.get('getLangs', data, key)
    end

    def detect(text, key)
      data = {"text" => text}
      return YandexTranslate::Connect.new.get('detect', data, key)
    end

    def translate(text, lang = 'ru', format = 'plain', key)
      data = {"text" => text, "lang" => lang, "format" => format}
      return YandexTranslate::Connect.new.get('translate', data, key)
    end
  end
end