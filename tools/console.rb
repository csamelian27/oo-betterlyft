require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mar = Passenger.new("Mar")
cass = Passenger.new("Cassidy")
momo = Passenger.new("MoMo")
hel = Driver.new("Helen")
prin = Driver.new("Prince")
ride1 = Ride.new(hel, mar, 10.0)
ride2 = Ride.new(prin, mar, 200.0)
ride3 = Ride.new(hel, cass, 120.0)
ride4 = Ride.new(hel, mar, 30.0)
ride5 = Ride.new(prin, cass, 40.0)
ride6 = Ride.new(prin, momo, 20.0)

binding.pry
