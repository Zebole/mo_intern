class RemovePreviousExperienceFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :previous_experience, :string
  end
end
