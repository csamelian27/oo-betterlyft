class Driver

  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passenger_names
    passengers = rides.map {|ride| ride.passenger.name}
    passengers.uniq
  end

  def self.mileage_cap(dist)
    Ride.all.select {|ride| ride.distance > dist}
  end

end
