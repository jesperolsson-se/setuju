# frozen_string_literal: true

require 'request/error_handled'

RSpec.describe ErrorHandled do
  it 'ignores valid json' do
    origin = double('origin')
    allow(origin).to receive(:json) { JSON.parse '{ "foo": "bar" }' }

    expect(
      ErrorHandled.new(
        origin
      ).json['foo']
    ).to eq 'bar'
  end

  it 'raises exception for invalid json' do
    origin = double('origin')
    allow(origin).to receive(:json) { JSON.parse 'foo' }
    expect { ErrorHandled.new(origin).json }.to raise_error(RuntimeError, /Invalid JSON/)
  end
end
