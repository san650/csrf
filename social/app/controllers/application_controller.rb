class ApplicationController < ActionController::Base
  before_action :authenticate

  attr_reader :current_user

  private

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      @current_user = User.authenticate(user, password)
    end
  end
end
