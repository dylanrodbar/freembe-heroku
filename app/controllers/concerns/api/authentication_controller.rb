module Api
class AuthenticationController < ApplicationController

  skip_before_action :authenticate_request
  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])


    if command.success?
      render json: { auth_token: command.result[0], id: command.result[1], name: command.result[2], email: command.result[3], photo: command.result[4], role: command.result[5] }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end


end
end