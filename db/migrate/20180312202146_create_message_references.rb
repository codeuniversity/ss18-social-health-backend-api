class CreateMessageReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :message_references do |t|
      t.references :user, foreign_key: true
      t.references :cluster, foreign_key: true
      t.references :message, foreign_key: true

      t.timestamps
    end
  end
end