class Customer < ActiveRecord::Base
  # This AR object is linked with the customers table.
  
  # Customer have a many to one relationship with a province by
  # way of a province_id foreign key. In other words, a customer
  # belongs to a specific province.
  belongs_to :province
  
  # If any of these three columns are blank then we cannot persist
  # the customer to the database.
  validates_presence_of :name, :email, :city
end