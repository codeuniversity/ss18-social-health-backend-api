class UserSerializer < ActiveModel::Serializer
  attributes :nickname, :credits, :last_time_credit_added, :email, :uid
  # has_one :rank
  has_many :messages
  has_one :cluster
end
