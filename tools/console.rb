# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

flatiron = Gym.new("Flatiron Gym")
deli = Gym.new("Corner Deli")

firuz = Lifter.new("Firuz", 30)
mavi = Lifter.new("Mavi", 2)
dmitriy = Lifter.new("Dmitriy", 10)
wesley = Lifter.new("Wesley", 40)

Membership.new(599, flatiron, firuz)
Membership.new(599, flatiron, mavi)
Membership.new(488, deli, dmitriy)
Membership.new(488, deli, wesley)
Membership.new(488, deli, firuz)

binding.pry

puts "Gains!"
