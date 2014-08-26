require "yandex/translate/version"
require './connect'

module Yandex
  module Translate
    class Client
      def get_langs(lang = 'en', key)
        data = {"ui" => lang}
        return Yandex::Translate::Connect.new.get('getLangs', data, key)
      end

      def detect(text, key)
        data = {"text" => text}
        return Yandex::Translate::Connect.new.get('detect', data, key)
      end

      def translate(text, lang = 'ru', format = 'plain', key)
        data = {"text" => text, "lang" => lang, "format" => format}
        return Yandex::Translate::Connect.new.get('translate', data, key)
      end
    end
  end
end
