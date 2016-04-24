require 'digest/sha1'
class BlogAuthenticate
  attr_reader :user, :password

  def initialize(opts = {})
    @user = opts[:user]
    @password = opts[:password]
  end

  def authenticate
    TokenGenerator.new(timestamp: Time.now).generate if login?
  end

  def login?
    generated_encode_password.eql? encode_password
  end

  def generated_encode_password
    Digest::SHA1.hexdigest(encrypted_key)
  end

  private

  def encrypted_key
    [ user, password, salt ].join("-")
  end

  def encode_password
    ENV['encode_password']
  end

  def salt
    ENV['salt']
  end
end
