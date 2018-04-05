class ClusterUserReferenceSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :cluster
  belongs_to :user
end
