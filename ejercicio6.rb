restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

puts 'El plato más caro es ' + restaurant_menu.invert.sort.last.last

puts 'El plato más barato es ' + restaurant_menu.invert.sort.first.last

puts 'El promedio del valor de los platos ' + (restaurant_menu.values.sum / restaurant_menu.length).to_s

puts 'El arreglo con los nombres de los plata: '
print restaurant_menu.keys

puts "\nEl arreglo con los precios de los plata: "
print restaurant_menu.values

puts "\nPlatos con IVA"
conIva = restaurant_menu.map {|x,y| [x,y*1.19]}
print conIva


puts "\nPlatos con descuento"
descto = conIva.map { |x,y| [x, y * (x.split.length > 1 ? 0.8 : 1)] }
print descto