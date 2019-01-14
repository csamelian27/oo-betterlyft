require 'pry'

class Passenger

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}
  end

  def total_distance
    total_miles = 0
    rides.each do |ride|
      total_miles += ride.distance
    end
    total_miles
  end

  def self.premium_members
    premiums = Ride.all.select {|ride| ride.distance > 100}
    premiums.map {|ride| ride.passenger}
  end

end
