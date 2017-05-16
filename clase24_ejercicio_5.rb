def menu(archivo)
	arch = File.open(archivo)
	contenido = arch.readlines()
	arch.close

	opcion = 1

	while opcion != 5
		puts "Menu: Ingrese una opción entre 1 y 5"
		puts "1: Para conocer la suma total de los Productos y su cantidad"
		puts "2: Para Ingresar nombre de producto y conocer Stock total"
		puts "3: Para conocer los Productos Sin Registrar"
		puts "4: Para agregar nuevo Producto y Stock por bodega"
		puts "5: Salir"

		opcion = gets.chomp.to_i
	
		if opcion == 1
			suma = 0
			contenido.each do |linea|
				arr = linea.split(", ")
				suma += arr[1].to_i + arr[2].to_i + arr[3].to_i
			end
			puts "La cantidad total de productos, es: #{contenido.length}"
			puts "La suma total de todos los productos, en todas las bodegas, es: #{suma}"
			puts ""
		end

		if opcion == 2
			suma = 0
			puts "Ingrese el Nombre de un Producto para conocer su Stock"
			prod = gets.chomp
			contenido.each do |linea|
				arr = linea.split(", ")
				if arr[0] == prod
					suma += arr[1].to_i + arr[2].to_i + arr[3].to_i
				end
			end
			puts "El Stock total del producto #{prod}, es: #{suma}"
			puts ""
				
		end

		if opcion == 3
			contenido.each do |linea|
				arr = linea.split(", ") #ejemplo: arr = ["Producto8", "1", "2", "NR"]
				arr2 = []
				bodega = 0
				arr.each do |x|
					if x.chomp == "NR"
						arr2.push(bodega)
					end
					bodega += 1
				end

				if arr2.length > 0 #como máximo, arr2 sería igual a: [1,2,3]
					arr2.each do |b|
						puts "Producto #{arr[0]}, debe registrar en bodega#{b}"
					end
				end
			end
			puts ""
		end

		if opcion == 4
			puts "Ingrese nuevo Producto y Stock para cada bodega"
			puts "Formato: Producto, 1, 2, 3"
			nuevo = gets.chomp

			arch = File.open(archivo,"a")
			arch.puts (nuevo) #ingresa nuevo producto
			arch.close
			puts "Producto Ingresado"
			puts ""
		end

		if opcion > 5
			puts "Opción NO válida. Intente nuevamente"
			puts ""
		end

	end
end

menu("ejercicio5.txt")