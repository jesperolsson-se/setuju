# frozen_string_literal: true

##
# Decorates a playload with error handling logic.
class ErrorHandled
  ##
  # Ctor.
  def initialize(origin)
    @origin = origin
  end

  ##
  # Asks the object to present the payload in JSON format.
  def json
    @origin.json
  rescue StandardError => e
    raise "Invalid JSON (#{e})"
  end
end
