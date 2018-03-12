class CreateChatbotContents < ActiveRecord::Migration[5.2]
  def change
    create_table :chatbot_contents do |t|
      t.string :chatbot_content_primary
      t.string :chatbot_content_secondary
      t.integer :chatbot_content_cemplexity

      t.timestamps
    end
  end
end
