class Gym
  attr_reader :name

  @@all = []
 

  def initialize(name)
      @name = name




      @@all << self
  end
  def self.all
#   - Get a list of all gyms

      @@all
  end
  def all_memberships_by_gym
#- Get a list of all memberships at a specific gym
      Membership.all.select do |membership|
                 membership.gym == self
      end

  end
  def all_lifters_by_gym
#- Get a list of all the lifters that have a membership to a specific gym
      self.all_memberships_by_gym.map do |membership|
                          membership.lifter
      end
  end
  def lifter_names
#- Get a list of the names of all lifters that have a membership to that gym
      self.all_lifters_by_gym.map { |lifter| lifter.name }.uniq
  end
  def lift_total_by_gym
#- Get the combined lift total of every lifter has a membership to that gym
      self.all_lifters_by_gym.map { |lifter| lifter.lift_total }.sum
  end
end














