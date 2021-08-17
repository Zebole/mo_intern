class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :previous_experience

      t.timestamps
    end
  end
end
