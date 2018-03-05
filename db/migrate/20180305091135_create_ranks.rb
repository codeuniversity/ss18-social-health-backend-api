class CreateRanks < ActiveRecord::Migration[5.2]
  def change
    create_table :ranks do |t|
      t.integer :rank_id
      t.boolean :rank_type
      t.string :rank_name
      t.string :rank_description

      t.timestamps
    end
  end
end
