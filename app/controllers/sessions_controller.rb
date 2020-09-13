class SessionsController < ApplicationController
    skip_before_action :login_required    # リダイレクトを繰り返すのを防ぐ

    def signup    # 新規登録画面
    end
    
    def create    # 新規登録
        user = User.new(create_params)
        if user.save
            session[:user_id] = user.id
            redirect_to root_path, notice: '登録しました'
        else
            redirect_to signup_path, notice: '登録に失敗しました'
        end
    end

    def new    # ログインフォーム画面
    end

    def login     # ログイン
        user = User.find_by(email: login_params[:email])    # ユーザーが送信したemailアドレスを持つデータがあるか検索

        if user&.authenticate(login_params[:password])    # データが見つかった場合、パスワード認証を行う
            session[:user_id] = user.id    # 認証が完了したらユーザーidをセッションに格納
            redirect_to root_path, notice: 'ログインしました'
        else
            redirect_to login_path, notice: 'ログインに失敗しました'
        end
    end

    def logout  #ログアウト
        session.delete(:user_id)
        @current_user = nil
        redirect_to login_path, notice: 'ログアウトしました'
    end
    

    private

    def create_params    # 新規登録時のストロングパラメーター
	    params.require(:session).permit(:name, :email, :password, :password_confirmation)
    end

    def login_params    # ログイン時のストロングパラメーター
	    params.require(:session).permit(:email, :password)
    end
end