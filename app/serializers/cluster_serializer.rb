class ClusterSerializer < ActiveModel::Serializer
  attributes :last_time_cbc_posted, :user_left_cluster_timestamps,
             :is_cluster_full, :has_more_than_4_members,
             :time_between_member_left_cluster_created, :created_at, :updated_at, :id
  has_one :rank
  has_many :users
end
