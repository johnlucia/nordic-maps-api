class ApplicationController < ActionController::Base
  before_action :require_login

  def require_login
    if http_basic_authenticate_or_request_with name: ENV['BASIC_AUTH_USER'], password: ENV['BASIC_AUTH_PWD']
      @password_protected = true
    end
  end

end
