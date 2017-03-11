class RemoveBookingIdFromPassengers < ActiveRecord::Migration[5.0]
  def change
    remove_column :passengers, :booking_id, :integer
  end
end
