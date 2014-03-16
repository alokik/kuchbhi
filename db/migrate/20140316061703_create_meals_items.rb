class CreateMealsItems < ActiveRecord::Migration
  def change
    create_table :meals_items, id: false do |t|
      t.integer :meal_id
      t.integer :item_id

      t.timestamps
    end
  end
end
