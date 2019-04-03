require_relative "../equipment"

class Glove < Equipment
  attr_reader :name
  def initialize
    @name = "glove"
  end

  def attack
    20
  end

  def defence
    20
  end

  def warrior_correction
    0
  end

  def wizard_correction
    0
  end

  def fighter_correction
    20
  end
end
