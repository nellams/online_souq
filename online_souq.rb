
# Part 1

souq_cart = ["old paper book", "potato", "red onion", "dried lemon", "frankincense",
            "medicinal herbs", "saffron", "glass spice jar", "red fabric",
            "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug",
            "large Persian rug","extra large Persian rug"]

puts "Please enter your name"
name = gets.chomp
puts "Welcome to the souq, #{name}! \nHere is our list of available items:"
souq_cart.each do |item|
puts item
end


cart = []

while true
  puts "Type an item to add it to your cart. Type 'done' when you are done adding items:"
  items = gets.chomp.downcase
  if items == "done"
    break
  elsif souq_cart.include?(items)
    cart << items
  else
    puts "I'm sorry, we don't have that item."
  end
end

puts "Ok, #{name}! Thank you for using our online platform. \nHere is what's in your cart:"
cart.each do |item|
  puts item
end

### Part 2


souq_cart = ["old paper book", "potato", "red onion", "dried lemon", "frankincense",
            "medicinal herbs", "saffron", "glass spice jar", "red fabric",
            "orange fabric", "handicrafts", "small Persian rug", "medium Persian rug",
            "large Persian rug","extra large Persian rug"]

puts "Please enter your name"
name = gets.chomp
puts "Welcome to the souq, #{name}! \nHere is our list of available items:"
souq_cart.each do |item|
puts item
end


cart = []
not_cart = []

while true
  puts "Type an item to add it to your cart. Type 'done' when you are done adding items:"
  items = gets.chomp.downcase
  if items == "done"
    break
  elsif souq_cart.include?(items)
    cart << items
  else
    puts "I'm sorry, we don't have that item."
    not_cart <<items
  end
end

puts "Ok, #{name}! Thank you for using our online platform. \nHere is what's in your cart:"
cart.each do |item|
  puts item
end

if not_cart != nil
  puts "We noticed you entered some items that aren't part of the online Souq. We don't have the following items yet but will let you know if they show up!:"
  not_cart.each do |item|
    puts item
  end
end
