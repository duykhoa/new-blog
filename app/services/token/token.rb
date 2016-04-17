module Authenticate
  class Token
    attr_accessor :token, :timestamp

    def initialize(opts = {})
      @token = opts[:token]
      @timestamp = opts[:timestamp]
    end

    def to_h
      {
        token: token,
        timestamp: timestamp
      }
    end
  end
end
