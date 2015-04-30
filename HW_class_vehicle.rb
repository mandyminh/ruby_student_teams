# Create an object class called Vehicle.

# Give it attributes like "model" and "make" ,and a couple more.

# Then save a variable as an instance of that Object, and print out the details.


class Vehicle

  def initialize(make, model, year, color, mileage)
    @make = make
    @model = model
    @year = year
    @color = color
    @mileage = mileage
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def color
    @color
  end

  def mileage
    @mileage
  end

  my_vehicle = Vehicle.new("Toyota","Rav-4",2013,"brown",8000)

puts "I drive a #{my_vehicle.make}, model #{my_vehicle.model}, year #{my_vehicle.year}, with #{my_vehicle.mileage} mileage!"
 end



