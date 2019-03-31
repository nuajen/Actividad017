# Corrige el siguiente codigo para instanciar el objeto
# y generar la salida de manera correcta.
class Car
  attr_accessor :model, :year
end

car = Car.new
car.model = 'Camaro'
car.year = 2016
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
