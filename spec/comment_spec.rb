# frozen_string_literal: true

require 'comment'

RSpec.describe Comment do
  it 'posts the message to the endpoint' do
    endpoint = double('endpoint')
    expect(endpoint).to receive(:add_comment)
    policy = double('policy')
    expect(policy).to receive(:verdict)
    Comment.new(endpoint, 'repo', 1, policy).post
  end
end
