# frozen_string_literal: true

##
# Ensures the request is read from its beginning.
class Fresh
  ##
  # Ctor.
  #
  # @param [IO/StringIO] The request.
  def initialize(request)
    @request = request
  end

  ##
  # Asks the object to present the request's body.
  def body
    @request.body.rewind
    @request.body.read
  end
end
