module Yandex::Translate
  class APIError < StandardError
    def initialize(code, message)
      @code = code
      @message = message
    end
  end
end