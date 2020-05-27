class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :type
      t.string :position
      t.integer :salary
      t.string :experience
      t.text :details

      t.timestamps
    end
  end
end
