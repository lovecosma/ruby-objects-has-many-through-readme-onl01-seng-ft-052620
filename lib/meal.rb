class Meal
attr_accessor :waiter, :customer, :total, :tip
@@all = []
def initialize(waiter, customer, total, tip)
  @waiter = waiter
  @customer = customer
  @total = total
  @tip = tip
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

end
