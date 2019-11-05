class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :rate
      t.integer :total

      t.timestamps
    end
  end
end
