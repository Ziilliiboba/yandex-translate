module YandexTranslate
	class ResponseVerify < StandardError
		def initialize(parsed)
			if parsed["code"] != nil && parsed["code"] != 200 
	      raise "API code:#{parsed["code"]}   #{parsed["message"]}" #ResponseError.new(parsed["code"] + parsed["message"])
	    end
		end
	end
end