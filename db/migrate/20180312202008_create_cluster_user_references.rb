class CreateClusterUserReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :cluster_user_references do |t|
      # t.references :cluster, foreign_key: true
      # t.references :user, foreign_key: true
      t.integer :cluster_id
      t.integer :user_id

      t.timestamps
    end
  end
end
