class Alumno
#	alumnos
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(archivo = 'notas.txt')
    file = File.open(archivo, "r")
    data = file.readlines
    file.close
    alumnos = []
    data.each do |alumno|
        alumnos << Alumno.new(*alumno.split(', '))
      end
    alumnos
  end
end


alumnos = Alumno.read_file
print alumnos