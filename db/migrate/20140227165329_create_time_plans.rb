class CreateTimePlans < ActiveRecord::Migration
  def change
    create_table :time_plans do |t|
      t.integer :days
      t.integer :plan_id

      t.timestamps
    end
  end
end
