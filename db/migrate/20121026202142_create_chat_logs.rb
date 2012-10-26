class CreateChatLogs < ActiveRecord::Migration
  def change
    create_table :chat_logs do |t|
      t.text :data

      t.timestamps
    end
  end
end
