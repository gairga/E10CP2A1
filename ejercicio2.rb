module Formula
	def perimetro
		p = 2 * (largo + ancho)
		puts "Y el perimetro es #{p} cm"
	end

	def area
		a = largo * ancho
		puts "Su area es #{a}"
	end
end

class Rectangulo
	include Formula
	attr_reader :largo, :ancho
	
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end

	def lados
		puts "Las medidas de las lados del Rectangulo es #{largo} de largo y #{ancho} de ancho"
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
		puts "Las medidas de las lados del Cuadrado es #{largo} de largo y #{ancho} de ancho"
	end
end


r = Rectangulo.new(3,8)
puts r.lados
puts r.area
puts r.perimetro

c = Cuadrado.new(8,8)
puts c.lados
puts c.area
puts c.perimetro
