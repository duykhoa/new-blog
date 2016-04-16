class SessionsController < ApplicationApiController
  def create
    user = User.new(user_name: user_params)
    if user.authenticate!
      return json: { status: :successs }
    else
      return json: { status: :failure }
    end
  end

  def user_params
    params.slice(:user_name, :password)
  end
end
