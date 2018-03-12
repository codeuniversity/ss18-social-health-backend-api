class CreateClusters < ActiveRecord::Migration[5.2]
  def change
    create_table :clusters do |t|
      t.references :rank, foreign_key: true
      t.timestamp :last_time_cbc_posted

      t.timestamps
    end
  end
end
