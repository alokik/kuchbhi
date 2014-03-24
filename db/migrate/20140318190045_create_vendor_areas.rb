class CreateVendorAreas < ActiveRecord::Migration
  def change
    create_table :vendor_areas do |t|
      t.integer :vendor_id
      t.integer :service_area_id

      t.timestamps
    end
  end
end
