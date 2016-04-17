module Authenticate
  class TokenKey
    def of(timestamp)
      [ encode_password, timestamp, salt ].join("-")
    end

    private

    def encode_password
      ENV['encode_password']
    end

    def salt
      ENV['salt']
    end
  end
end
