cart = {}
sum = 0
loop do
  print "Введите название товара (или \"стоп\"): "
  name = gets.chomp
  break if name == "стоп"
  print "цену: "
  price = gets.chomp.to_f
  print "кол-во: "
  count = gets.chomp.to_f
  
  cart[name] = { P: price, C: count}  
end 

cart.each {|name, hash| sum += hash [:P] * hash [:C]}

puts cart
puts "Итого: #{sum}" 