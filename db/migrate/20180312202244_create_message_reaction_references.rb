class CreateMessageReactionReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :message_reaction_references do |t|
      t.references :message_reaction, foreign_key: true
      t.references :message, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
