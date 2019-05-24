class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :completed
      t.text :designSummary      
      t.timestamps null: false
    end
  end
end