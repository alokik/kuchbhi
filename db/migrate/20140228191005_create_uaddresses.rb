class CreateUaddresses < ActiveRecord::Migration
  def change
    create_table :uaddresses do |t|
      t.integer :user_id
      t.string :company_name
      t.string :flat_no
      t.string :street_address
      t.string :location
      t.string :city
      t.string :landmark

      t.timestamps
    end
  end
end
