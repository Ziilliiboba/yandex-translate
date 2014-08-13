class Connect

  require "json"
  require 'net/http'

  def initialize
    begin
      file = File.new("./key.txt")
      @KEY = file.read.freeze
      file.close
    rescue
      puts "Add file key.txt with your yandex key api in root directory"
    end
  end

  def get(type, data)
    postfix = URI.encode_www_form(data)
    req = Net::HTTP.get(URI("#{BASE_URI}#{type}?key=#{@KEY}&#{postfix}"))
    return JSON.parse(req)
  end

private
  BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/'.freeze
end
