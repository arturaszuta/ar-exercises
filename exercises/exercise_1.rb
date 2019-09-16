require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  attr_accessor :store1, :store2, :store3, :mens_stores, :womens_stores, :total_sales
end

Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true);

Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true);

Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false);

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true);

Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false);

Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true);

@store1 = Store.find(1)
@store2 = Store.find(2)
@store3 = Store.find(3)

@store1.update(name: 'Dollarama')
p @store1
@store3.destroy()

p Store.count()

@mens_stores = Store.where("mens_apparel = true")

@mens_stores.each { |e|
  puts "Name of the store: #{e.name}"
  puts "Revenue of this store: #{e.annual_revenue}"
  puts "-----------------------------"
}


@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000");

p @womens_stores

@total_sales = Store.sum(:annual_revenue)

p @total_sales
p @total_sales / Store.count()

p Store.where("annual_revenue >= 1000000").count()
















