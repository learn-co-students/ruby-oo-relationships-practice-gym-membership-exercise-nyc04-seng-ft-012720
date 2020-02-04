# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Bob", 330)
l2 = Lifter.new("Joe", 410)
l3 = Lifter.new("Jack", 360)
l4 = Lifter.new("Chris", 230)
l5 = Lifter.new("John", 390)
l6 = Lifter.new("Nick", 430)
puts Lifter.all.length == 6
g1 = Gym.new("Winter Gym")
g2 = Gym.new("Summer Gym")
g3 = Gym.new("Fancy Winter Gym")
g4 = Gym.new("Fancy Summer Gym")
g5 = Gym.new("Weekend Gym")
g6 = Gym.new("Super Duper Gym")
g7 = Gym.new("Luxurious Gym")
puts Gym.all.length == 7
m1 = Membership.new(110, l1, g1)
m2 = Membership.new(1190, l1, g5)
m3 = Membership.new(10, l1, g3)
m4 = Membership.new(1120, l2, g1)
m5 = Membership.new(120, l2, g7)
m6 = Membership.new(90, l3, g3)
m7 = Membership.new(80, l3, g6)
m8 = Membership.new(70, l4, g4)
m9 = Membership.new(60, l5, g2)
m10 = Membership.new(130, l6, g1)
m11 = Membership.new(110, l5, g6)
m12 = Membership.new(90, l4, g4)
puts Membership.all.length == 12

p g4.all_memberships_by_gym
puts " ======================================== "
p g3.all_memberships_by_gym
puts " ======================================== "
p g6.all_memberships_by_gym
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p g4.all_lifters_by_gym
puts " ======================================== "
p g3.all_lifters_by_gym
puts " ======================================== "
p g6.all_lifters_by_gym
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p g4.lifter_names
puts " ======================================== "
p g3.lifter_names
puts " ======================================== "
p g6.lifter_names
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p g4.lift_total_by_gym
puts " ======================================== "
p g3.lift_total_by_gym
puts " ======================================== "
p g6.lift_total_by_gym
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p Lifter.average_lift_total
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p l4.memberships_by_lifter
puts " ======================================== "
p l3.memberships_by_lifter
puts " ======================================== "
p l6.memberships_by_lifter
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p l4.gyms_by_lifter
puts " ======================================== "
p l3.gyms_by_lifter
puts " ======================================== "
p l6.gyms_by_lifter
puts " ======================================== "
puts " ****************************************** "
puts " ****************************************** "
p l1.total_by_lifter
puts " ======================================== "
p l2.total_by_lifter
puts " ======================================== "
p l3.total_by_lifter
puts " ======================================== "
p l4.total_by_lifter
puts " ======================================== "
p l5.total_by_lifter
puts " ======================================== "
p l6.total_by_lifter
puts " ======================================== "


binding.pry

puts "Gains!"
