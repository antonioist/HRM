class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :location
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age
      t.text :cover_letter
      t.string :job_experience
      t.string :studies
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
