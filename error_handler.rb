require './response_error'

class ErrorHandler < StandardError
  def initialize(parsed)
    if parsed["code"] != nil && parsed["code"] != 200 
      raise ArgumentError.new(parsed["message"])
      return ResponseError.new(parsed["code"], parsed["message"])
    end
  end
end