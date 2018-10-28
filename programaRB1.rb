puts "Hola mundon"

nombre = "Jerry algo"

puts nombre

Mi_variable = {
    nombre: "nombre",
    codigo: 2
}

va1 = "1"
va2 = 2
puts "#{va1} hola #{va2}";

puts va1.to_i


#Comentario 
va1 = "Hola munda"
puts va1

va2 = '2'
va3 = 3

puts "va2 = #{va2}"
puts "va3 = #{va3}"

va4 = va2.to_i + va3

puts "va4 es igual va2 + va3 = #{va4}"

def myFunction
  puts "juanito"
end

myFunction


def nombreFunction name, lname
  puts "juanito"
  puts name
  puts lname
  lname
end

nombreFunction "Jerry", "lagos"

na = nombreFunction "Jerry", "lagos"
puts na



puts "Ingrese su edad"
edad = gets.to_i
if edad >= 18 && edad <= 44
  puts "Bienvenido"
elsif edad < 18
  puts "No puedes ingresar"
elsif edad >= 45 && edad <= 80
  puts "ya esta mayorsito"
else 
  puts "algo sucede"
end


#_calculadora
def calc n1, op, n2
  if op == '+'
    puts n1 + n2
  elsif op == '-'
    puts n1 - n2
  elsif op == '*'
    puts n1 * n2
  elsif op == '/'
    puts n1 / n2
  end
end

puts calc 1, '+', 2 
puts calc 1, '-', 2 
puts calc 1, '*', 2 
puts calc 1, '/', 2 

#_end calculadora 

#begind_arrays
array = [1,2,'3',"4"]

array.each do |f|
  puts f 
end

puts array[2]

5.times do
  puts 'asdf'
end
#end_arrays

#proc , lambad

#clases
class Personas
    def initialize
      puts "inicializando este es mi información"
    end
  
    def persona 
      puts "esto es persona"
    end
  
    def otraEdad
      puts "otraEdad"
      edad
    end
  
    private
      def edad
        puts "mi edad es 48 años"
      end
  end 
  
  p = Personas.new
  puts p.persona
  #puts Personas.persona
  puts p.otraEdad