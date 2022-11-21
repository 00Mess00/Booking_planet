class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :departure_date
      t.integer :arrival_date
      t.string :validate, default: 'unvalidate'
      t.integer :total_price
      t.references :planet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
