class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :from
      t.date :to
      t.string :name
      t.integer :vendor_id

      t.timestamps
    end
  end
end
