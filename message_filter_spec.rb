require_relative 'message_filter'

describe MessageFilter do
  before() do
    @filter = MessageFilter.new('foo')
  end
  it 'detects message with NG word' do
    expect(@filter.detect?('hello from foo')).to eq true
  end
  it 'detects message without NG word' do
    expect(@filter.detect?('hello world')).to eq false
  end
end
