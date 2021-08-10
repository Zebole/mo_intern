class CreateQualifications < ActiveRecord::Migration[6.0]
  def change
    create_table :qualifications do |t|
      t.string :qualification_category
      t.string :qualification_value

      t.timestamps
    end
  end
end
