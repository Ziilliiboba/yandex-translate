require 'json'
require 'net/http'
require './response_verify'

module Yandex
  module Translate
    class Connect
      def get(type, data, key)
        postfix = URI.encode_www_form(data)
        req = JSON.parse(Net::HTTP.get(URI("#{BASE_URI}#{type}?key=#{key}&#{postfix}")))
        begin
          Yandex::Translate::ResponseVerify.new(req)
          return req
        rescue Yandex::Translate::ResponseVerify
        end
      end

    private
      BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/'.freeze
    end
  end
end