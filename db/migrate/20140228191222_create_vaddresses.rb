class CreateVaddresses < ActiveRecord::Migration
  def change
    create_table :vaddresses do |t|
      t.integer :vendor_id
      t.string :bldg_no
      t.string :street_address
      t.string :location
      t.string :city
      t.string :landmark

      t.timestamps
    end
  end
end
