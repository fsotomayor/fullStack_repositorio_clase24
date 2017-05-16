def contador_lineas(archivo)
	arch = File.open(archivo)
	contenido = arch.readlines()
	arch.close

	return contenido.length
end

puts "la cantidad de líneas es: #{contador_lineas("ejercicio2.txt")}"