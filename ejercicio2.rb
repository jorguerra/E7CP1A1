
# Parte 1
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |producto, valor| puts producto }

# Parte 2
productos['cereal'] = 2200

# Parte 3
productos['bebida'] = 2000

# Parte 4
arreglo = productos.to_a

# Parte 5
productos.delete('galletas')
