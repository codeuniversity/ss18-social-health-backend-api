class User < ActiveRecord::Base
  before_save :add_to_cluster

# has_many :transactions
# has_many :items
# has_many :articles
# has_many :categories

has_one :cluster_user_reference
has_one :cluster, through: :cluster_user_reference

has_many :message_references
has_many :messages, through: :message_references

# Include default devise modules.
devise :database_authenticatable, :trackable, :omniauthable
include DeviseTokenAuth::Concerns::User

def add_to_cluster
  puts "This is the before_save cluster"
  puts self.cluster
  cluster = find_or_create_cluster
  cluster_reference = ClusterUserReference.create(cluster: cluster, user: self)
  self.cluster_user_reference = cluster_reference
end

def find_or_create_cluster
  not_full_clusters = Cluster.not_full_clusters
  if not_full_clusters.empty?
    Cluster.create(is_cluster_full: false, has_more_than_4_members: false)
  else
     # Here comes the logic where we determine which cluster a user gets assigned to
     # when we have not_full_clusters
    not_full_clusters.sample
  end
end

end
