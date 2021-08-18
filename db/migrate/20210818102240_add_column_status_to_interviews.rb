class AddColumnStatusToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :status, :boolean
  end
end
