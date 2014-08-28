require './api_error'

module Yandex::Translate
  class ResponseVerify
    def verify(parsed)
      if parsed["code"] != nil && parsed["code"] != 200 
        Yandex::Translate::APIError.new(parsed["code"], parsed["message"])
      else
        return parsed
      end
    end
  end
end