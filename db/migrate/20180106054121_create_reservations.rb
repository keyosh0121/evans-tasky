class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.integer :amount
      t.text :message
      t.integer :side

      t.timestamps
    end
  end
end
