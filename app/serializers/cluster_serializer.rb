class ClusterSerializer < ActiveModel::Serializer
  attributes :last_time_cbc_posted, :user_left_cluster_timestamps,
             :is_cluster_full, :has_more_than_4_members,
             :time_between_member_left_cluster_created
  has_one :rank
end
