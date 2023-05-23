class Person
  def initialize(attributes)
    attributes.each do |key,value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

my_attr = {name:"Morris", color:"Chocolate", hobby:"Golf"}
morris = Person.new(my_attr)
puts morris.hobby

class Car 
  def initialize(attributes)
    attributes.each do |key,value|
      self.class.attr_accessor(key)
      self.send("#{key}=",value)
    end
  end
end

car_attr = {name:"BMW", year:2004, color:"black"}
car = Car.new(car_attr)
puts car.name

class Dog
  def initialize(attributes)
    attributes.each do |key,value|
      self.class.attr_accessor(key)
      self.send("#{key}=",value)
    end
  end
end

dog_attr = {name:"Nick", color:"Black", breed:"GSD"}
dog = Dog.new(dog_attr)
puts dog.color