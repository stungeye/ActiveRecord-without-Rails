class CreateGhosts < ActiveRecord::Migration
  # The name of this class is derived by 
  # camel-casing the words in the filename.
  
  # The up method describe the ghost table we wish to create.
  def up
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
  # self.up run this SQL:
  # CREATE TABLE "ghosts" (
  #  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  #  "name" varchar(255),
  #  "phone" varchar(255),
  #  "age" integer,
  #  "created_at" datetime NOT NULL,
  #  "updated_at" datetime NOT NULL)

  # The down method describes how to undo what the up method does.
  def down
    drop_table :ghosts
  end
  # self.down runs this SQL:
  # DROP TABLE "ghosts"
  
end

