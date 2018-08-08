module Formula
	def perimetro(largo, ancho)
		p = largo*ancho
		puts "El perimetro es #{p}"
	end

	def area(area)
		a = area * area
		puts "El area es #{a}"
	end
end

class Rectangulo
	include Formula
	attr_reader :largo, :ancho
	@@a = 0
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
		@@a = 0
	end

	def lados
		puts "las medidas de las lados es #{ancho} y #{largo}"
	end
end

class Cuadrado
	include Formula
	attr_reader :largo, :ancho

	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end

	def lados
		puts "las medidas de las lados es es #{ancho} y #{largo}"
	end
end


r = Rectangulo.new(4,6)
puts r.lados
puts r.area(7)

