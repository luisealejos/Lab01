# Luis Eduardo Alejos Marroquín
# 20062009

module RubyModule
	#boolean palindromo? (string s)
	# Funcion que determina si  una palabra o frase es un palindromo, devolviendo un booleano.
	# Debe ignorar todo lo que no sea una letra, por ejemplo: "A man, a plan, a canal - Panama" es un palíndromo.  
	# Como recomendacion considere el uso de expresiones regulares.
	# Puede ayudarse en este enlace (http://rubular.com)
	def palindromo?(s)
		st = s.gsub(/\W/,nil.to_s).downcase
		st == st.reverse
	end

	#Hash cuenta_palabras(string s)
	# Funcion que recibe un string con una frase como argumento, y devuelve un Hash, en donde las llaves
	# son las palabras de la frase, y el valor es la cantidad de veces que dicha palabra aparece en la frase
	def cuenta_palabras(s)
		key = s.split(/\W+/)
		h = Hash.new(0)
		key.each {|v| h[v] +=1}
		h
	end

	#void hanoi(int numero_discos, int t_origen, int t_destino, int t_alterna)
	# Procedimiento que imprime los pasos para seolver el juego Torres de Hanoi
	def hanoi(numero_discos, t_origen, t_destino, t_alterna)
		if numero_discos > 0
			hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
			puts "moviendo disco "+numero_discos.to_s+" from #{t_origen} to #{t_alterna}"
			hanoi(numero_discos-1, t_destino, t_origen, t_alterna)
		end
	end

	#Array sort(Array a, boolean asc)
	# Funcion que recibe un arreglo y devuelve una copia del arreglo ordenado, ascendente o descendentemente, según se indique
	def sort(b, asc)
	a = b.dup
	a.each{	
		t = a.length.-1
		if(asc) 
			t.times do |i|
				if(a[i+1] < a[i])
					aux = a[i]
					a[i] = a[i+1]
					a[i+1] = aux
				end
			end
		else
			t.times do |i|
				if(a[i+1] > a[i])
					aux = a[i]
					a[i] = a[i+1]
					a[i+1] = aux
				end
			end
		end
		b
	}
	end

	#int char_count(string s, char c)
	# Funcion que devuelve la cantidad de ocurrencias de un caracter c en un string s
	def char_count(s,c)
		cont = 0
		s.length.times do |i|
			if(s[i] == c)
				cont += 1
			end
		end
		cont
	end

	#int atoi(string s)
	# Funcion que recibe un string representando un entero con signo (en base 10) como argumento y devuelve ese numero en un entero
	def atoi(s)
		num = 0
		acc = 0
		s.length.downto(0) { |i|
			if s[i] == '0'
				num = 0
			elsif s[i] == '1'
				num = 1
			elsif s[i] == '2'
				num = 2
			elsif s[i] == '3'
				num = 3
			elsif s[i] == '4'
				num = 4
			elsif s[i] == '5'
				num = 5
			elsif s[i] == '6'
				num = 6
			elsif s[i] == '7'
				num = 7
			elsif s[i] == '8'
				num = 8
			elsif s[i] == '9'
				num = 9
			elsif s[i] == '-' && i == 0
				num = 0
					acc *= -1
				elsif s[i] == nil || (s[i] == '+' && i == 0)
				num = 0
			else
				abort("No se ingreso un número válido.")
			end
			if num > 0
				acc += num * 10** (s.length-1-i)
			end
		}
		acc
	end
end