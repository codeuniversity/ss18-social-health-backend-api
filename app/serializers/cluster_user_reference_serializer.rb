class ClusterUserReferenceSerializer < ActiveModel::Serializer
  attributes :id
  has_one :cluster
  has_one :user
end
