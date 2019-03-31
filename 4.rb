# Crea una clase llamada Dog cuyo constructor reciba como argumento
# un hash con la siguiente estructura:
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(canine)
    @nombre = canine[:nombre]
    @raza = canine[:raza]
    @color = canine[:color]
  end
end

nate_dog = Dog.new propiedades
puts nate_dog.nombre
puts nate_dog.raza
puts nate_dog.color
