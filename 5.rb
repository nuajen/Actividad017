# Se tiene la clase Morseable que contiene un metodo de instancia generate_hash
# los datos de traduccion de numero entero a codigo morse.
class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    nil unless number.between?(0, 9)
    { number => "#{'.' * number}#{'-' * (5 - number)}" } if number.between?(0, 5)
    { number => "#{'-' * (number - 5)}#{'.' * (10 - number)}" } if number.between?(6, 9)
  end

  def to_morse
    generate_hash(@number)
  end
end

m = Morseable.new(6)
print m.to_morse
