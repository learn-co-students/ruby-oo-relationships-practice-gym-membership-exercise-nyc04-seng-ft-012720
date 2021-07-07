class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def add_membership(gym,cost)
    Membership.new(self, gym, cost)
  end

  def memberships
    Membership.all.select {|m| m.lifter == self}
  end

  def gyms
    memberships.map {|m| m.gym}
  end

  def self.avg_lift_total
    sum = self.all.reduce(0) {|sum, lifter| sum + lifter.lift_total}
    sum/self.all.length
  end

  def total_cost
    memberships.reduce(0) {|sum, m| sum + m.cost}
  end
end
