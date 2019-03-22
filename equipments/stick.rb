require_relative "../equipment"

class Stick < Equipment
  attr_reader :name
  def initialize
    @name = "stick"
  end

  def offence
    30
  end

  def defence
    10
  end
end
