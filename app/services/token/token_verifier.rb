module Authenticate
  require 'digest/sha1'

  class TokenVerifier
    attr_reader :token, :timestamp

    def initialize(opts = {})
      @token = opts[:token]
      @timestamp = token.timestamp
    end

    def verify!
      TokenGenerator.new(timestamp).generate == token
    end
  end
end
