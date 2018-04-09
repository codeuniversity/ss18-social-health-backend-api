class MessageReactionReferenceSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :message_reaction
  belongs_to :message
  belongs_to :user
end
