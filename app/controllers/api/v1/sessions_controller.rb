class Api::V1::SessionsController < ApplicationController
  
  before_action :current_user

<<<<<<< HEAD
  # login
=======
  before_action :current_user

    # login
>>>>>>> 12d98f26b237fa819caca265b54662b3f38e76c4
  def create
    @user = User.find_by(email: session_params[:email])

    if @user && @user.authenticate(session_params[:password])
      login!
      render json: { logged_in: true, user: @user }
    else
      render json: { status: 401, errors: ['認証に失敗しました。', '正しいメールアドレス・パスワードを入力し直すか、新規登録を行ってください。'] }
    end
  end

    # logout
  def destroy
    reset_session
    render json: { status: 200, logged_out: true }
  end

    # logged_in?
  def show
<<<<<<< HEAD
=======
    # logger.debug(@current_user)
>>>>>>> 12d98f26b237fa819caca265b54662b3f38e76c4
    if @current_user
      render json: { logged_in: true, user: current_user }
    else
      render json: { logged_in: false, message: 'ユーザーが存在しません' }
    end
  end

  private

    # def current_user
    #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # end

    def session_params
      params.require(:user).permit(:username, :email, :password)
    end
end
