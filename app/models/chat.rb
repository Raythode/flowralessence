class Chat < ApplicationRecord
    has_one :chat_group
    has_one :user
end
