class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :salary
      t.string :duration
      t.references :organisation, null: false, foreign_key: true
      t.string :category
      t.string :deadline

      t.timestamps
    end
  end
end
