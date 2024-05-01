class ChatGroup < ApplicationRecord
    belongs_to :chat, foreign_key: :chat_group_id, optional: true
    has_one :user
end
