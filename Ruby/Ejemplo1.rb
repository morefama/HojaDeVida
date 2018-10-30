va = "Hola mundo"
puts va

puts "Digite su nombre: "
nombre = gets.to_s

imprimirNombre nombre

def imprimirNombre nombre
	puts "Su nombre es: #{nombre}"
end

def unmetodo
	puts 'Comienzo del metodo'
	yield
	yield
	puts 'Final del metodo'
end

unmetodo do 
		puts 'soy un bloque que esta afuera pero me imprimo dentro del metodo'
end

#comparando
def saludar argumento
	puts "hola #{argumentos[0]}"
end

saludar('Emanuel', 'el clon', 'Estudiante')
