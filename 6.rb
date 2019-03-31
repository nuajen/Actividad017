class Product
  # def initialize(name, large, medium, small, xsmall)
  # args(first_arg, *grouped_args)
  def initialize(name, *price_by_sizes)
    # @name = name
    # @large = large
    # @medium = medium
    # @small = small
    # @prices_by_size = prices_by_size.map(&:to_i)
    @name = name
    @large = price_by_sizes[0].to_i
    @medium = price_by_sizes[1].to_i
    @small = price_by_sizes[2].to_i
    @xsmall = price_by_sizes[3].to_i
    print "#{@large} - #{@small}\n"
  end
  def average
    # @price_by_sizes.sum /@price_by_sizes.length
    ( @large + @medium + @small + @xsmall ) / 4
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  # pasar todos los argumentos con *
  products_list << Product.new(*ls)
end

print "#{products_list}\n"
puts "#{products_list[0].average}\n"
