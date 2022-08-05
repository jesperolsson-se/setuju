# frozen_string_literal: true

require 'target'

RSpec.describe Target do
  it 'writes pull request metadata' do
    endpoint = double('endpoint')
    message = 'foo'
    expect(endpoint).to receive(:add_comment).with('Codertocat/Hello-World', 2, message)
    Target.new(
      endpoint,
      JSON.parse(File.read('spec/data/pr_payload'))
    ).add_comment(message)
  end
end
