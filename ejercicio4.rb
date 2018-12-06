personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

# Parte 1

personas_hash = {}

4.times do |i|
  personas_hash[personas[i]] = edades[i]
end

puts personas_hash

# Parte 2
def promedio(arreglo)
  arreglo.values.sum/arreglo.length
end

puts 'El promedio de edades es ' + promedio(personas_hash).to_s
