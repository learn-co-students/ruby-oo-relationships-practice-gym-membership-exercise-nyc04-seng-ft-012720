class Gym
  attr_reader :name
  ALL =[]

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all 
    ALL
  end

  def my_members
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def member_names
    my_members.map do |member|
      member.lifter.name
    end
  end

  def my_members_lift_totals
    lift_totals = 0
    my_members.map do |member|
      lift_totals += member.lifter.lift_total
    end
    lift_totals
  end

end
