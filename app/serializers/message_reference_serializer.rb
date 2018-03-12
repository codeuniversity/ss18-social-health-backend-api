class MessageReferenceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :cluster
  has_one :message
end
