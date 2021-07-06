class Membership
  attr_reader :cost, :lifter, :gym
  ALL = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    ALL << self
  end

  def self.all 
    ALL
  end
  
end
