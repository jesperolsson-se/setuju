# frozen_string_literal: true

##
# Encapsulates the logic for posting a pull request comment.
class Target
  ##
  # Ctor.
  #
  # @param endpoint The endpoint of the pull request.
  # @param payload The payload.
  def initialize(endpoint, payload)
    @endpoint = endpoint
    @payload = payload
  end

  ##
  # Asks the object to post the given message as an comment.
  def add_comment(message)
    @endpoint.add_comment(
      @payload['repository']['full_name'],
      @payload['pull_request']['number'],
      message
    )
  end
end
