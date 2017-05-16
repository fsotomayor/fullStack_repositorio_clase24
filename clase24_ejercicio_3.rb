def contador_palabras(archivo,palabra)
	arch = File.open(archivo)
	contenido = arch.readlines()
	arch.close

	cont = 0
	contenido.each do |x|
		if x.chomp == palabra
			cont += 1
		end
	end
	return cont
end

palabra = "holaaaa"
puts "La palabra #{palabra}, aparece #{contador_palabras("ejercicio3.txt",palabra)} veces"