class Conversation < ActiveRecord::Base
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
    belongs_to :receipient, :foreign_key => :recipient_id, class_name: 'User'

    #if a user deletes a conversation it deletes all associated meessages
    has_many :messages, dependent: :destroy

    validates_uniqueness_of :sender_id, :scope => :recipient_id

    #A conversation requires both a sender and a recipient
    scope :between, -> (sender_id,recipient_id) do
		where("(conversations.sender_id = ? AND conversations.recipient_id =?)
		OR (conversations.sender_id = ? AND conversations.recipient_id =?)",
	 	sender_id,recipient_id, recipient_id, sender_id)
  end
end