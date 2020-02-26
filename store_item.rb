item1 = { :name => "Emeralds", :color => "green", :price => "10,000" }
item2 = { "name" => "Sapphires", "color" => "blue", "price" => "7,000"}
item3 = { name: "Ancient Artifacts", color: "rust", price: "5,000"}
p "Here at the Moonlighter we have the following available:"
puts "---------------------"
p "#{item1[:name]} are available in #{item1[:color]} and are #{item1[:price]}"
p "#{item2["name"]} are available in #{item2["color"]} and are #{item2["price"]}"
p "#{item3[:name]} are available in #{item3[:color]} and are #{item3[:price]}"

class Moonlighter

  attr_reader :item_name, :item_color, :item_price, :in_stock
  attr_writer :in_stock

  def initialize(input) 
    @name = input[:item_name]
    @color = input[:item_color]
    @price = input[:item_price]
    @stock = input[:in_stock]
  end

  def print_info
    p "#{@name} are available in #{@color} and are #{@price} and is #{@stock}"
  end

  def inflation
    @price = 1.2 * @price
  end

  def supply=(active_supply)
    @stock = active_supply
  end

end


store1 = Moonlighter.new({item_name: "Gears", item_color: "steel", item_price: 4000, in_stock: "In Stock"})
store2 = Moonlighter.new({item_name: "Secret Orbs", item_color: "glowing blue", item_price: 12000, in_stock: "In Stock"})

store1.print_info
store2.print_info
store1.inflation
store2.inflation
puts ""
p "The new item prices are:"
puts "========================"
store1.print_info
store2.supply=("Out of Stock")
store2.print_info
