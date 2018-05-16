class ChatController < ApplicationController
    def index
        @chats = Chat.all
        @chat = Chat.new
    end
    
    def create
        @chat = Chat.new(chat_params)
        
        if @chat.save
            respond_to do |format|
                format.js
            end
        else

        end
    end
    
    private
        def chat_params
          params.require(:chat).permit(:contents, :type)
        end
end
