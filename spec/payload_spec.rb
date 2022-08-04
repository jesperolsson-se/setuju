# frozen_string_literal: true

require 'request/payload'

RSpec.describe Payload do
  it 'parse to json' do
    body = double('body')
    allow(body).to receive(:body) { '{ "foo": "bar" }' }
    expect(
      Payload.new(body).json['foo']
    ).to eq 'bar'
  end
end
