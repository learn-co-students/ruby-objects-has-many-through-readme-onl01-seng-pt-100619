require 'pry'

class Customer
  attr_accessor :name, :age
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    # binding.pry
  end
 
  def self.all
    @@all
    # binding.pry
  end
  
 
  def new_meal(name, total, tip=0)
    # binding.pry
    Meal.new(name, self, total, tip)
  end
  
  
  def meals 
    Meal.all.select {|meal| meal.customer == self}
    # binding.pry
  end
  
  def waiters
    meals.collect(&:waiter)
  end
  
  
 
end