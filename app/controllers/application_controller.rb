class ApplicationController < ActionController::API

  # skip_before_action :verify_authenticity_token

  #Rails APIモードでCookiesを使用するには、以下を記述
  include ActionController::Cookies
  #Rails APIモードでhelpersメソッドを使用するには、以下を記述
  include ActionController::Helpers
  helper_method :login!, :current_user

  def login!
    session[:user_id] = @user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    
end
