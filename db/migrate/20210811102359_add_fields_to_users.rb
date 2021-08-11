class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :phone_number, :integer
    add_column :users, :date_of_birth, :date
    add_column :users, :previous_experience, :string
  end
end
