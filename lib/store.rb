class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name,
  :minimum => 3
  validates :annual_revenue, numericality: { other_than: 0 }
end
