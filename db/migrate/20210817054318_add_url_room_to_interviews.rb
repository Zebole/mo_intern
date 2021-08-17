class AddUrlRoomToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :url_room, :string, default: 'www.zoom.com'
  end
end
