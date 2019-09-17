class Ship
  attr_reader :name, :type, :booty, :all

  @@all = []

  def self.clear
    @@all.clear
  end


  def initialize(name, type, booty)
      @name = name
      @weight = tytpe
      @height = booty
      @@all << self
  end
end
