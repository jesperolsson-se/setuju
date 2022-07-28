# frozen_string_literal: true

require 'investigation'
require 'json'

RSpec.describe Investigation do
  it 'provides the number of files' do
    expect(
      Investigation.new(
        JSON.parse(File.read('spec/data/pr_payload'))
      ).dossier
    ).to eq '1 files changed'
  end
end
