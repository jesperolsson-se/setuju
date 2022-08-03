# frozen_string_literal: true

##
# Encapsulates decision making based on pull request metrics.
class Policy
  ##
  # Ctor.
  def initialize(dossier, threshold = 25)
    @dossier = dossier
    @threshold = threshold
  end

  ##
  # Asks the object to decide if the policy is upheld.
  def verdict
    format(
      '%<decision>s, %<number>d files changed.',
      decision: @dossier > @threshold ? 'I disagree' : 'I agree',
      number: @dossier
    )
  end
end
