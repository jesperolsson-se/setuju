# frozen_string_literal: true

##
# Represents a pull request comment.
class Comment
  ##
  # Ctor.
  #
  # @param endpoint The endpoint of the pull request.
  # @param repo The GitHub repository.
  # @param pull The pull request.
  # @param policy (See Policy)
  def initialize(endpoint, repo, pull, policy)
    @endpoint = endpoint
    @repo = repo
    @pull = pull
    @policy = policy
  end

  ##
  # Asks the object to post itself to the endpoint.
  def post
    @endpoint.add_comment(@repo, @pull, @policy.verdict)
  end
end
