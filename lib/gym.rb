class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership| membership.gym == self}
  end

  def lifters
    self.memberships.map{|membership| membership.lifter.name}
  end

  def lift_total
    lifterinstances = self.memberships.map{|membership| membership.lifter}
    lifterinstances.reduce(0.0){|sum, lifter| sum + lifter.lift_total}
  end
end
