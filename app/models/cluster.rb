class Cluster < ActiveRecord::Base
  belongs_to :rank
  has_many :cluster_user_references
  has_many :users, through: :cluster_user_references

  def self.not_full_clusters
    @not_full_clusters = where(is_cluster_full: false, has_more_than_4_members: true)
  end

  def checkForTimeDifference
    
  end

end
