h = {"x": 1, "y": 2}

#Parte 1
h["z"] = 3

#Parte 2
h[:x] = 5

#Parte 3
h.delete(:y)

#Parte 4
puts "yeeah" if h.has_key?('z')

#Parte 5
puts h.invert