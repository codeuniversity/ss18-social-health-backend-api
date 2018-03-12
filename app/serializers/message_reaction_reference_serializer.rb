class MessageReactionReferenceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :message_reaction
  has_one :message
  has_one :user
end
