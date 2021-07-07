class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []


  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    




    @@all << self
  end
  def self.all
#    - Get a list of all memberships

      @@all
  end
    






end



