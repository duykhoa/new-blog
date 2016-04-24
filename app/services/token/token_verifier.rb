require 'digest/sha1'

class TokenVerifier
  attr_reader :token, :timestamp

  def initialize(token:)
    @token = token
    @timestamp = token.timestamp
  end

  def verify!
    TokenGenerator.new(timestamp: timestamp).generate == token
  end
end
