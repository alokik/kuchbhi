class DropMenus < ActiveRecord::Migration

  	def up
    	drop_table :menus
  	end
	def down
    	raise ActiveRecord::IrreversibleMigration
  	end  
end
