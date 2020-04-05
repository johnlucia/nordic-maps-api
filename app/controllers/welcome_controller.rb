class WelcomeController < ApplicationController
  skip_before_action :require_login

  def index
    @is_ios = browser.platform.ios?
    @is_android = browser.platform.android?
    @is_something_else = !@is_ios && !@is_android
  end
end
