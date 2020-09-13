class MessagesController < ApplicationController
    before_action :ensure_correct_user, {only: [:edit,:update,:destroy]

    def index
        @messages = Message.all.includes(:user)
        @message = Message.new
    end
    
    def create
        message = Message.new(create_params)
        if message.save
            redirect_to root_path, notice: 'メッセージを送信しました' 
        else
            redirect_to root_path, notice: 'メッセージの送信に失敗しました'
        end   
    end
    
    def edit
        @message = Message.find(params[:id])
        unless @message.user_id == current_user.id
            redirect_to root_path, notice: '不正なアクセスです'
        end
    end

    def update
        @message = Message.find(params[:id])
        if @message.user_id == current_user.id && @message.update(update_params)
            redirect_to root_path, notice: '変更しました'
        else
            redirect_to root_path, notice: '変更に失敗しました'
        end
    end

    def destroy
        @message = Message.find(params[:id])
        if @message.user_id == current_user.id && @message.destroy
            redirect_to root_path, notice: 'メッセージを削除しました'
        else
            redirect_to root_path, notice: 'メッセージの削除に失敗しました'
        end
    end

    def show
        @message = Message.find_by(id: params[:id])
        @user=User.find_by(id: @post.user_id)
    end

    private

    def create_params
        params.require(:message).permit(:content).merge(user_id: current_user.id)
    end

    def update_params
        params.require(:message).permit(:content)
    end

    def ensure_correct_user
        @message = Message.find_by(id: params[:id])
        if @message.user_id != @current_user.id
            redirect_to root_path, notice: '権限がありません'
        end
    end
end