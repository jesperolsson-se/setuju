# frozen_string_literal: true

require 'policy'

RSpec.describe Policy do
  it 'accepts files' do
    files = 1
    threshold = 2
    expect(
      Policy.new(
        files, threshold
      ).verdict
    ).to eq format('I agree, %d files changed.', files)
  end

  it 'rejects files' do
    files = 2
    threshold = 1
    expect(
      Policy.new(
        files, threshold
      ).verdict
    ).to eq format('I disagree, %d files changed.', files)
  end
end
