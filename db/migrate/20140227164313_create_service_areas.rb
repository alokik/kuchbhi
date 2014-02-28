class CreateServiceAreas < ActiveRecord::Migration
  def change
    create_table :service_areas do |t|
      t.string :location
      t.integer :pincode
      t.string :city
      t.integer :vendor_id

      t.timestamps
    end
  end
end
