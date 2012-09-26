class AddHouseIdToGhosts < ActiveRecord::Migration
  # The name of this class is derived by 
  # camel-casing the words in the filename.
  
  # This up method describes the new column we want to add
  # to the ghosts table.
  def up
    add_column :ghosts, :house_id, :integer
  end
  # SQL:
  # ALTER TABLE "ghosts" ADD "house_id" integer
  
  # The down method describes how to undo what the up method does.
  def down
    remove_column :ghosts, :house_id
  end
  
end