require 'json'
require 'net/http'
require './response_verify'

module YandexTranslate
  class Connect
    def get(type, data, key)
      postfix = URI.encode_www_form(data)
      req = JSON.parse(Net::HTTP.get(URI("#{BASE_URI}#{type}?key=#{key}&#{postfix}")))
      begin
        YandexTranslate::ResponseVerify.new(req)
        return req
      rescue YandexTranslate::ResponseVerify
      end
    end

  private
    BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/'.freeze
  end
end