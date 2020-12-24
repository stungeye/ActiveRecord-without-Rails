class Customer < ActiveRecord::Base
  # This AR class is linked with the customers table.
  # This table has a province_id foreign key so a customer:
  belongs_to :province

  validates :email, uniqueness: true
  validates :name, :email, presence: true
end
