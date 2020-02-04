class Lifter
  attr_reader :name, :lift_total

  @@all = []
  @@total = 0



  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@total += lift_total


    @@all << self
  end
  def self.all
    #  - Get a list of all lifters

      @@all
  end
  def self.average_lift_total
    #    - Get the average lift total of all lifters
      @@total.to_f/@@all.length.to_f
    
  end
  def memberships_by_lifter
# - Get a list of all the memberships that a specific lifter has
      Membership.all.select do |membership|
                membership.lifter == self
end


  end
  def gyms_by_lifter
#   - Get a list of all the gyms that a specific lifter has memberships to
      self.memberships_by_lifter.map do |membership|
                      membership.gym
      end
  end

  def total_by_lifter
#  - Get the total cost of a specific lifter's gym memberships
      self.memberships_by_lifter.map { |membership| membership.cost }.sum     


  end
end




  

 

 

  

 