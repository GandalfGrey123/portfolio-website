class CreateLinks< ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :linkUrl
      t.string :linkName    
      t.timestamps      
      t.references :project, foreign_key: true
    end   
  end
end
