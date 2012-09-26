class Category < ActiveRecord::Base
  # This AR object is linked with the categories table.
  
  # A category as a one to many relationship with products.
  # The products table contains a category_id foreign key.
  # In other words, a category has many products.
  has_many :products
end