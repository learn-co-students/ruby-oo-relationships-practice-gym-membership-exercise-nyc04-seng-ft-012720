# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

abid = Lifter.new("Abid", 820)
tom = Lifter.new("Tom", 800)
gurjot = Lifter.new("Gurjot", 850)
firuz = Lifter.new("Firuz", 950)
mavi = Lifter.new("Mavi", 800)
pano = Lifter.new("Pano", 1000)

blackout_barbell = Gym.new("Blackout Barbell") # 70
blink = Gym.new("Blink") # 20
equinox = Gym.new("Equinox") # 200
barbell_brigade = Gym.new("Barbell Brigade") # 100

abid.join_gym(70, blackout_barbell)
abid.join_gym(200, equinox)
tom.join_gym(200, equinox)
tom.join_gym(100, barbell_brigade)
gurjot.join_gym(70, blackout_barbell)
firuz.join_gym(70, blackout_barbell)
mavi.join_gym(200, equinox)
mavi.join_gym(70, blackout_barbell)
pano.join_gym(200, equinox)
pano.join_gym(70, blackout_barbell)
pano.join_gym(100, barbell_brigade)

# pp Lifter.all
# pp Gym.all

# pp abid.my_memberships

# p Lifter.average_lift_total
# p abid.total_gym_membership

# pp blackout_barbell.member_names

pp blackout_barbell.my_members_lift_totals