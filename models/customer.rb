class Customer < ActiveRecord::Base
  validates_presence_of :name, :email, :city
  
  belongs_to :province
end