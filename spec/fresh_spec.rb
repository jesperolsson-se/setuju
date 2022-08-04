# frozen_string_literal: true

require 'request/fresh'

RSpec.describe Fresh do
  it 'rewinds before read' do
    body = double('body')
    request = double('request')
    allow(request).to receive(:body) { body }

    expect(body).to receive(:rewind)
    expect(body).to receive(:read)
    Fresh.new(request).body
  end
end
