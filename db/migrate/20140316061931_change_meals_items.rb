class ChangeMealsItems < ActiveRecord::Migration
  def change
  	rename_table :meals_items, :items_meals
  end
end
