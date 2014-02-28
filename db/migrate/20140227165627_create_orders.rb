class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :from
      t.date :to
      t.integer :user_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
