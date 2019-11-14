class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.integer :courier_id
      t.string :vehincle_type
      t.string :shipping_speed
      t.string :leg
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :post_code
      t.string :country
      t.integer :distance

      t.timestamps
    end
  end
end
