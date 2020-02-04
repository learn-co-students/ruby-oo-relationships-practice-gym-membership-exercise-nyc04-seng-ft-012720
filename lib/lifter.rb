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

  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map{|membership| membership.gym}
  end

  def self.average_lift_total
    self.all.reduce(0.0){|sum, lifter| sum + lifter.lift_total} / self.all.length
  end

  def total_membership_cost
    self.memberships.reduce(0.0){|sum, membership| sum + membership.cost}
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end
end
