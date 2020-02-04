class Lifter
  attr_reader :name, :lift_total
  ALL = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    ALL << self
  end

  def self.all 
    ALL
  end

  def join_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

  def my_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def self.average_lift_total
    lift_totals = Lifter.all.map do |lifter|
        lifter.lift_total
    end
    lift_totals.sum / lift_totals.count
  end

  def total_gym_membership
    total = 0
    my_memberships.map do |membership|
      total += membership.cost
    end
    total
  end


end
