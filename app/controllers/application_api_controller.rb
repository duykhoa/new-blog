require "application_responder"

class ApplicationApiController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :json

  before_action :verify_token

  def verify_token
    token = Token.new(params)

    unless TokenVerifier.new(token: token).verify!
      render json: { status: 401, msg: "Not authorized" }
    end
  end
end
