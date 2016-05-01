class Token
  attr_accessor :token, :timestamp

  def initialize(opts = {})
    @token = opts[:token] || opts["token"]
    @timestamp = opts[:timestamp] || opts["timestamp"]
  end

  def to_h
    {
      token: token,
      timestamp: timestamp
    }
  end

  def ==(a_token)
    token == a_token.token
  end
end
