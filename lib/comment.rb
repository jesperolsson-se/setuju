# frozen_string_literal: true

##
# Represents a pull request comment.
class Comment
  ##
  # Ctor.
  #
  # @param endpoint The endpoint of the pull request.
  # @param policy (See Policy)
  def initialize(endpoint, policy)
    @endpoint = endpoint
    @policy = policy
  end

  ##
  # Asks the object to post itself to the endpoint.
  def post
    @endpoint.add_comment(@policy.verdict)
  end
end
