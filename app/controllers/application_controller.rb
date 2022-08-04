class ApplicationController < ActionController::API

  # skip_before_action :verify_authenticity_token
<<<<<<< HEAD
  
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
  
=======

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
    
>>>>>>> 12d98f26b237fa819caca265b54662b3f38e76c4
end
