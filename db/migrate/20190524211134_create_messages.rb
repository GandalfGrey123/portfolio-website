class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :senderIp
      t.string :senderEmail
      t.string :first
      t.string :last
      t.string :title
      t.text :message
      t.timestamps
    end
  end
end
