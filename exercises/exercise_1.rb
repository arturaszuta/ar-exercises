require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  attr_accessor :store1, :store2
end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true);

Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true);

Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false);

@store1 = Store.find(1)
@store2 = Store.find(2)

@store1.update(name: 'Dollarama')
p @store1











