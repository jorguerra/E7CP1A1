def mostrar_menu
  puts '----MENU----'
  puts '1.- Agregar un item'
  puts '2.- Eliminar un item'
  puts '3.- Actualizar un item'
  puts '4.- Ver stock total'
  puts '5.- Item con mayor stock'
  puts '6.- Consultar si un item existe'
  puts '7.- Salir'
end

$inventario = {
  "Notebooks": 4,
  "PC Escritorio": 6,
  "Routers": 10,
  "Impresoras": 6
}

def verificar(item)
  $inventario.keys.map {|x| x.to_s.gsub(/:/,'')}.select { |x| x == item }.length > 0
end

def listar
  $inventario.keys.map {|x| x.to_s.gsub(/:/,'')}.join(", ").to_s
end

def agregar
  valid = false
  until valid
    puts 'Ingrese el item separando por coma el nombre del precio (nombre, precio): '
    values = gets.chomp.split(',')
    if values.length == 2
      $inventario[values[0].strip] = values[1].strip.to_i
      valid = true
    end
  end
  valid
end

def eliminar
  puts 'Lista de items disponibles: ' + listar + '.'
  valid = false
  until valid
    print 'Ingrese el item que desea borrar: '
    item = gets.chomp
    if verificar(item)
      $inventario.delete(item)
      valid = true
    end
  end
  valid
end

def actualizar
  puts 'Lista de items disponibles: ' + listar + '.'
  valid = false
  until valid
    print 'Ingrese el item que desea actualizar: '
    item = gets.chomp
    if !verificar(item)
      puts 'El item ingresado no existe'
    else
      precio = 0
      while precio.zero?
        print 'Ingrese el precio nuevo: '
        precio = gets.chomp.to_i
        print "\n"
      end
      $inventario[item] = precio
      valid = true
    end
  end
  valid
end

salir = false
until salir
  mostrar_menu
  print 'Ingrese una opción: '
  op = gets.chomp
  case op.to_i
    when 1
      agregar
    when 2
      eliminar
    when 3
      actualizar
    when 4
      puts 'Hay ' + $inventario.values.sum.to_s + ' items en la tienda'
    when 5
      puts 'Producto con más stock: ' + $inventario.invert.sort.last.last.to_s
    when 6
      print 'Ingrese el item a consultar: '
      item = gets.chomp
      puts "\n" + (verificar(item) ? 'Si' : 'No')
    when 7
      salir = true
  end
end
