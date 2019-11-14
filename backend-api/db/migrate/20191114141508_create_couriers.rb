class CreateCouriers < ActiveRecord::Migration[5.2]
  def change
    create_table :couriers do |t|
      t.integer :client_id
      t.string :courier_name

      t.timestamps
    end
  end
end
