class RenameValidateInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :validate
    add_column :bookings, :status, :string, default: "pending"
  end
end
