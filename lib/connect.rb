require 'json'
require 'net/http'
require 'response_verify'

module Yandex::Translate
  class Connect
    def initialize(key)
      @key = key
      @rv = Yandex::Translate::ResponseVerify.new
    end

    def get(type, data)
      postfix = URI.encode_www_form(data)
      rep = JSON.parse(Net::HTTP.get(URI("#{BASE_URI}#{type}?key=#{@key}&#{postfix}")))
      return @rv.verify(rep)
    end

  private
    BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/'.freeze
  end
end