class CuentaBancaria
	def initialize nombre
		@balance = 0; #@ se usa para declara variable local de la clase		
		@nombre = nombre
	end

	def depositar cantidad
		@balance += cantidad
	end

	def retirar cantidad
		@balance -= cantidad
	end 

	def saldo
		puts "El saldo es: #{@balance} dolares"
	end
end

#Llamar la class
cuenta1 = CuentaBancaria.new "marta"
puts cuenta1.inspect #Detalle del objecto

cuenta1.depositar 1000
cuenta1.saldo
cuenta1.retirar 400
cuenta1.saldo
