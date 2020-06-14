require 'pry'
class Waiter
  attr_accessor :name, :years_of_experience
  @@all = []
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
    @meals = []
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    @customer = customer
    @total = total
    @tip = tip
    @new_meal = Meal.new(self, @customer, @total, @tip)
  end

def meals
  
end


end
