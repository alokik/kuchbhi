class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :mrp
      t.integer :meal_id
      t.integer :time_plan_id

      t.timestamps
    end
  end
end
