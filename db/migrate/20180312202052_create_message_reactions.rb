class CreateMessageReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :message_reactions do |t|
      t.string :reaction_content

      t.timestamps
    end
  end
end
