def escribir_arch(str1,str2,arr,color)
	#parte 1
	arch = File.open("index.html","w")
	arch.puts "<!DOCTYPE html>"
	arch.puts "<html>"
	arch.puts "<head>"
	arch.puts "		<title>Ejercicio 1</title>"
	#parte 3 - agregar color a los párrafos
	arch.puts "		<style>p { background-color: #{color} }</style>"
	arch.puts "</head>"
	arch.puts "<body>"	

	#parte 3 - agregar color a los párrafos
	arch.puts "		<p>#{str1}</p>"
	arch.puts "		<p>#{str2}</p>"


	#parte 2 - recibir arreglo e imprimir bajo los párrafos si es que no está vacío
	arr_cont = arr.length
	if arr_cont > 0
		arch.puts "		<ol>"
		arr.each do |x|
			#puts x
			arch.puts "			<li> #{x} </li>"
		end
		arch.puts "		</ol>"
	end

	arch.puts "</body>"
	arch.puts "</html>"

	arch.close

	return nil
end

arr = ["e1","e2","e3","e4"]
color = "grey"
escribir_arch("parr1","parr2",arr,color)