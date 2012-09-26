class CreateGhosts < ActiveRecord::Migration
  
  def self.up
    create_table :ghosts do |t|
      # An id column is automatically created.
      # This id will be an auto-incrementing
      # primary key.
      t.string :name
      t.string :phone
      t.integer :age
      t.timestamps # Generates our updated_at and created_at columns.
    end
  end
  # Runs this SQL:
  # CREATE TABLE "ghosts" (
  #  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  #  "name" varchar(255),
  #  "phone" varchar(255),
  #  "age" integer,
  #  "created_at" datetime NOT NULL,
  #  "updated_at" datetime NOT NULL)

  def self.down
    drop_table :ghosts
  end
  # Runs this SQL:
  # DROP TABLE "ghosts"
  
end

