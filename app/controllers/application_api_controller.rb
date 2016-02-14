require "application_responder"

class ApplicationApiController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :json
end
