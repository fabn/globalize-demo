class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_default_user

  def login_default_user
    sign_in AdminUser.first unless current_admin_user
  end
end
