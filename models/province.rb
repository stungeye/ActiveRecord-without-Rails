class Province < ActiveRecord::Base
  # This AR object is linked with the provinces table.
  
  # A province has a one to many relationship with customers.
  # The customers table has a province_id foreign key.
  # In other words, a province has many customers.
  has_many :customers
end