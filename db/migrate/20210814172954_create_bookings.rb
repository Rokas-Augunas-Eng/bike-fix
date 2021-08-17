class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.string :booking_location
      t.text :comment
      t.datetime :datetime

      t.timestamps
    end
  end
end
