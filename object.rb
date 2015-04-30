
class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def birthday
    @age += 1
  end

  def change_name(name)
    @name = name
  end

end

class User

  def initialize(login, password)
    @login = login
    @password = password
  end

  def login
    @login
  end

  def password
    @password
  end

end

class Pet

  def initialize(name, breed, color)
    @name = name
    @breed = breed
    @color = color
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def color
    @color
  end

  def sound
    if @breed == "dog"
      return "Woof!"
    elsif @breed == "cat"
      return "Meow!"
    elsif @breed == "cow"
      return "Moooooooooö!"
    elsif @breed == "horse"
      return "Neigh!"
    elsif @breed == "snake"
      return "Hiss!"
    elsif @breed == "goat" || @breed == "lamb"
      return "Baaa!"
    else
      return "I have no idea."
    end
  end

end

class Product

  def initialize(name, category, price, quantity)
    @name = name
    @category = category
    @price = price
    @quantity = quantity
  end

  def name
    @name
  end

  def category
    @category
  end

  def price
    @price
  end

  def quantity
    @quantity
  end

  def item_sold(qty)
    @quantity -= qty
  end

  def shipment_arrived(qty)
    @quantity += qty
  end

end

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

  def mileage_change(x, mood)
    if mood == "happy"
      @mileage += x
    elsif mood == "angry"
      @mileage -= x
    end
  end

end

person1 = Person.new("Aaron", 34)
user1 = User.new("argroch", "12345")
pet1 = Pet.new("Ser Pounce", "cat", "brown")

all_products = []
5.times do
  print "Name: "
  name = gets.chomp
  print "Category: "
  category = gets.chomp
  print "Price: "
  price = gets.chomp
  print "Quantity: "
  quantity = gets.chomp
  product = Product.new(name, category, price, quantity)
  all_products.push(product)
end

# puts "Hello, #{person1.name}. You are #{person1.age}-years-old."

# person1.birthday

# puts "It's my birthday! Now I'm #{person1.age}"

# puts "We have #{product1.quantity} #{product1.name}s."
# puts "How many would you like to buy?"
# qty = gets.chomp.to_i

# product1.item_sold(qty)

# puts "We now have #{product1.quantity} left in stock."

# puts "#{pet1.name} says #{pet1.sound}"

my_vehicle = Vehicle.new("Ford","C-Max",2013,"blue",42.4)

puts "But what amount has your MPG changed?"
amount = gets.chomp.to_f
puts "And what has been your driving mood?"
mood = gets.chomp

my_vehicle.mileage_change(amount, mood)

puts "Your MPG is now #{my_vehicle.mileage}"