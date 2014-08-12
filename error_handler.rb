require './response_error'

class ErrorHandler < StandardError
	def initialize(parsed)		
		raise parsed["message"] if parsed["code"] != nil && parsed["code"] != 200
		return parsed
	resque
		return ResponseError.new(parsed["code"], parsed["message"])
	end
end