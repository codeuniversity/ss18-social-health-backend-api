class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message_sent, :message_content
end
