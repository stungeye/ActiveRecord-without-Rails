class AddHouseIdToGhosts < ActiveRecord::Migration
  
  def self.up
    add_column :ghosts, :house_id, :integer
  end
  # SQL:
  # ALTER TABLE "ghosts" ADD "house_id" integer
  
  def self.down
    remove_column :ghosts, :house_id
  end
  
end