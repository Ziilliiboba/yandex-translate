require "./yandex-translate/version"
require './connect'

module Yandex::Translate
  class Client
    def initialize(key)
      @connect = Yandex::Translate::Connect.new(key)
    end
    def get_langs(lang = 'en')
      data = {"ui" => lang}
      return @connect.get('getLangs', data)
    end

    def detect(text)
      data = {"text" => text}
      return @connect.get('detect', data)
    end

    def translate(text, lang = 'ru', format = 'plain')
      data = {"text" => text, "lang" => lang, "format" => format}
      return @connect.get('translate', data)
    end
  end
end