class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :tagName
      t.string :resourceLink
      t.string :resourceImage   
      t.timestamps      
      t.references :project, foreign_key: true
    end
  end
end
