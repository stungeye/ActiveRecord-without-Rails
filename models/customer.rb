class Customer < ActiveRecord::Base
  belongs_to :province
  
  validates_presence_of :name, :email, :city
end