class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message_sent, :message_content, :created_at, :updated_at
  has_one :cluster
  has_one :user
end
