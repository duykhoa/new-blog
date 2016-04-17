require 'digest/sha1'

class TokenGenerator
  attr_reader :timestamp

  def initialize(opts = {})
    @timestamp = opts[:timestamp] || Time.now
  end

  def generate
    Token.new(token: token_value, timestamp: timestamp)
  end

  private

  def token_value
    Digest::SHA1.hexdigest TokenKey.of(timestamp)
  end
end
