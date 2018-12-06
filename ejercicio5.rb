meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

ventas_meses = {}

meses.length.times do |i| 
  ventas_meses[meses[i]]=ventas[i]
end

puts ventas_meses

#Invertir las llaves
inv = ventas_meses.invert
puts inv

#Mes con más ventas
puts inv.last.last