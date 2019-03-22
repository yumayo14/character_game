require_relative "../equipment"

class Sword < Equipment
  attr_reader :name
  def initialize
    @name = "sword"
  end

  def offence
    30
  end

  def defence
    30
  end
end
