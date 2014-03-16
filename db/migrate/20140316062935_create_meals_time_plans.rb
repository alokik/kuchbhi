class CreateMealsTimePlans < ActiveRecord::Migration
  def change
    create_table :meals_time_plans, id: false do |t|
      t.integer :meal_id
      t.integer :time_plan_id

      t.timestamps
    end
  end
end
