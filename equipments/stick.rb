require_relative "../equipment"

class Stick < Equipment
  attr_reader :name
  def initialize
    @name = "stick"
  end

  def attack
    30
  end

  def defence
    10
  end

  def warrior_correction
    0
  end

  def wizard_correction
    20
  end

  def fighter_correction
    0
  end
end
