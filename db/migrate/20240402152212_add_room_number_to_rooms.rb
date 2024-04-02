class AddRoomNumberToRooms < ActiveRecord::Migration[7.1]
  def change
    add_column :rooms, :room_number, :string, null: false, default: ""
  end
end
