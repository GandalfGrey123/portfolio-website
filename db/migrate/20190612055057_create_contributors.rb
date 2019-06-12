class CreateContributors < ActiveRecord::Migration[5.2]
  def change
    create_table :contributors do |t|
      t.string :contributorName
      t.string :contributorProfileLink
      
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
