class CreateOrganisations < ActiveRecord::Migration[6.0]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :phone_number
      t.string :email
      t.string :website
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
