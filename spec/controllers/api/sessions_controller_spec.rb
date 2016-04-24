require 'rails_helper'

describe Api::SessionsController do
  it do
    post :create, { user: 'user', password: 'password' }
    expect(response.status).to eq 200
  end
end
