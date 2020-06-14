class Customer
  attr_accessor :age, :name, :meals, :waiters
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @meals = []
    @waiters = []
    @@all << self
  end


  def self.all
    @@all
  end

def new_meal(waiter, total, tip)
  @waiter = waiter
  @total = total
  @tip = tip
  @new_meal = Meal.new(@waiter, self, @total, @tip)
  @meals << @new_meal
  @waiters << waiter
end

def meals
  @meals
end

def waiters
  @waiters
end

end
