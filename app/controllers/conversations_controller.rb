class ConversationsController < ApplicationController
    before_action :authenticate_user!
    before_action :validate_subscriber

    def index
        @users = User.all
        @conversations = Conversation.all
    end

    def create
        if Conversation.between(params[:sender_id], params[:recipient_id]).present?
            @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
        else
            @conversation = Conversation.create!(conversation_params)
        end
        redirect_to conversation_messages_path(@conversation)
    end

    private

    def validate_subscriber
        if !current_user.subscribed
            flash[:alert] = "Only subscribers can message other users!"
            redirect_to profiles_path
        end
    end

    def conversation_params
        params.permit(:sender_id, :recipient_id)
    end
end