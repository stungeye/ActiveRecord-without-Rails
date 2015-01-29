class Customer < ActiveRecord::Base
  # This AR object is linked with the customers table.
  validates :email, uniqueness: true
  validates :name, :email, presence: true
end