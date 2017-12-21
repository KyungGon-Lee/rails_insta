class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception # 이 구문 없애면 포스트 가능함 하지만 보안에 취약
  def current_user
         @user ||= User.find(session[:user_id]) if User.exists? && session[:user_id]
        # exists? 유저가 존재하는가?
        # @user = @user || User.find(session[:user_id]) if session[:user_id]와 같음
        # @user가 있으면 그대로 쓰고 @user가 없으면 User.find꺼를 씀
    end
    # helper_method(:current_user) 이렇게 해주면 헬퍼로 됨
    helper_method :current_user

    def authenticate_user #현재 접속한 유저 없으면 로그인 페이지로 리다이렉트
      unless current_user
        flash[:notice] = "로그인을 해야되영"
      redirect_to '/login'
      end
      # redirect_to 'login' if !current_user
    end


end
