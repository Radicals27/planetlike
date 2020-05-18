class Message < ActiveRecord::Base
    belongs_to :conversation
    belongs_to :user

    #A message must have a body and 2 people associated with it
    validates_presence_of :body, :conversation_id, :user_id

    def message_time
        created_at.strftime("%m/%d/%y at %l:%M %p")
    end
end