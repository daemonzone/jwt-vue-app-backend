class ApplicationController < ActionController::API
  def users
    render json: User.all, status: :ok
  end
end
