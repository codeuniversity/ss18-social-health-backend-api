class MessageReactionReference < ApplicationRecord
  belongs_to :message_reaction
  belongs_to :message
  belongs_to :user
end
