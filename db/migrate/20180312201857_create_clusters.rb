class CreateClusters < ActiveRecord::Migration[5.2]
  def change
    create_table :clusters do |t|
      t.references :rank, foreign_key: true
      # t.references :user, foreign_key: true
      t.timestamp :last_time_cbc_posted

      # What I've added
      # t.references :user, foreign_key: true
      t.integer :user_left_cluster_timestamps, array: true
      t.boolean :is_cluster_full
      t.boolean :has_more_than_4_members
      t.integer :time_between_member_left_cluster_created
      t.timestamps
    end

    add_index :clusters, :user_left_cluster_timestamps, using: 'gin'

  end
end
