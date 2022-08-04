# frozen_string_literal: true

##
# Encapsulates the logic for representing a request's payload.
class Payload
  ##
  # Ctor.
  def initialize(request)
    @request = request
  end

  ##
  # Asks the object to present the payload in JSON format.
  def json
    JSON.parse @request.body
  end
end
