#created by Moyseenko Sergey
#class use yandex API
require './connect'
require './response_error'
require './error_handler'

class YandexTranslate
  def get_langs(lang = 'en')
    data = {"ui" => lang}
    parsed = Connect.new.get('getLangs', data)
    begin
      err = ErrorHandler.new(parsed)
      return parsed
    rescue ErrorHandler
      return err
    end
  end

  def detect(text)
    data = {"text" => text}
    parsed = Connect.new.get('detect', data)
    begin
      err = ErrorHandler.new(parsed)
      return parsed
    rescue ErrorHandler
      return err
    end
  end

  def translate(text, lang = 'ru', format = 'plain')
    data = {"text" => text, "lang" => lang, "format" => format}
    parsed = Connect.new.get('translate', data)
    begin
      err = ErrorHandler.new(parsed)
      return parsed
    rescue ErrorHandler
      return err
    end
  end
end