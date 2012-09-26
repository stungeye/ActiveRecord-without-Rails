class Province < ActiveRecord::Base
  has_many :customers
end