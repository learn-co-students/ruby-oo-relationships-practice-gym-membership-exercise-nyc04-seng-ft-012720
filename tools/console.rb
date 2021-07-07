# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

tom = Lifter.new("Tom", 200)
abid = Lifter.new("Abid", 300)
gurjot = Lifter.new("Gurjot", 450)
firuz = Lifter.new("Firuz", 350)

boulder = Gym.new("Boulder")
cascade = Gym.new("Cascade")
lightning = Gym.new("Lightning")

tom.add_membership(boulder, 30)
tom.add_membership(cascade, 25)
abid.add_membership(lightning, 55)
gurjot.add_membership(boulder, 40)
firuz.add_membership(lightning, 55)


binding.pry

puts "Gains!"
