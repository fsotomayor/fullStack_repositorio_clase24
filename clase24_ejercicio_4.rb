def menu(archivo)
	arch = File.open(archivo)
	contenido = arch.readlines()
	arch.close

	opcion = 1

	while opcion != 4		
		puts "Menu: Ingrese una opción entre 1 y 4"
		puts "1: Para conocer la cantidad de productos"
		puts "2: Para Ingresar nombre de producto y conocer Stock"
		puts "3: Para conocer Productos con Stock bajo 5"
		puts "4: Salir"

		opcion = gets.chomp.to_i
	
		if opcion == 1
			puts "La cantidad de productos es: #{contenido.length}"
			#exit
		end

		if opcion == 2
			cont = 0
			puts "Ingrese el Nombre de un Producto"
			prod = gets.chomp
			contenido.each do |linea|
				arr = linea.split(", ")
				if arr[0] == prod
					cont += 1
				end
			end
			puts "El Stock del producto #{prod} es: #{cont}"
			puts ""
				
		end

		if opcion == 3
			arr2 = []
			contenido.each do |linea|
				arr = linea.split(", ")
				if arr[1].to_i < 5
					arr2.push(arr[0])
				end
			end
			puts "Los productos con Stock menor a 5 son:"
			puts arr2
			puts ""
		end

		if opcion > 4
			puts "Opción NO válida. Intente nuevamente"
			puts ""
		end

	end
end

menu("ejercicio4.txt")