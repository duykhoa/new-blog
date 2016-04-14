module Authenticate
  require 'digest/sha1'

  def authenticate
    Digest::SHA1.hexdigest(key) == ENV['salt']
  end

  def key
    [ user_name, password ].join("-")
  end
end
