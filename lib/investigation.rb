# frozen_string_literal: true

##
# Encapsulates information gathering about a pull request.
class Investigation
  ##
  # Ctor.
  #
  # Expects the JSON to conform to the GitHub API.
  # https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads#pull_request
  def initialize(json)
    @json = json
  end

  ##
  # Asks the object to provide a dossier for the pull request.
  def dossier
    @json['pull_request']['changed_files']
  end
end
