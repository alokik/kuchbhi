class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :from
      t.date :to
      t.integer :user_id
      t.integer :meal_id
      t.integer :time_plan_id
      t.integer :uaddress_id
      t.integer :price_id

      t.timestamps
    end
  end
end
