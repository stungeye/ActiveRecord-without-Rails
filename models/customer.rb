class Customer < ActiveRecord::Base
  belongs_to :province

  validates :email, uniqueness: true
  validates :name, :email, presence: true
end