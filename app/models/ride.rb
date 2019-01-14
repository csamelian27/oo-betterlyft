class Ride

  attr_accessor :driver, :passenger, :distance

  @@all =[]

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    distances = @@all.map {|ride| ride.distance}
    average = distances.reduce(:+) / distances.size
    average
  end

end
