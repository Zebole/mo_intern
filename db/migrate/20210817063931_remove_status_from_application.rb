class RemoveStatusFromApplication < ActiveRecord::Migration[6.0]
  def change
    remove_column :applications, :status
  end
end
