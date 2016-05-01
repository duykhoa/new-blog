require "application_responder"

class ApplicationAdminController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  layout "application"

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def verify_token
    token = Token.new(session[:token])

    unless TokenVerifier.new(token: token).verify!
      render json: { status: 401, msg: "Not authorized" }
    end
  end
end
