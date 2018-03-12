class ClusterSerializer < ActiveModel::Serializer
  attributes :id, :last_time_cbc_posted
  has_one :rank
end
