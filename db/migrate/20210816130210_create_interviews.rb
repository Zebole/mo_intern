class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
