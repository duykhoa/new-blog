class Api::SessionsController < ApplicationApiController
  def create
    token = BlogAuthenticate.new(user_params).authenticate

    if token
      render json: token.to_h
    else
      render json: { status: 401, msg: "Not authorized"}
    end
  end

  private

  def user_params
    params.permit(:user, :password)
  end
end
