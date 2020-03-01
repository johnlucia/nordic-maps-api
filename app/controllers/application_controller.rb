class ApplicationController < ActionController::Base
  before_action :require_login

  def require_login
    http_basic_authenticate_or_request_with name: ENV['BASIC_AUTH_USER'], password: ENV['BASIC_AUTH_PWD']
  end

end
