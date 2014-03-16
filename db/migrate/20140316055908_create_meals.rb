class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :category_id
      t.integer :vendor_id
      t.string :nonvegtag

      t.timestamps
    end
  end
end
