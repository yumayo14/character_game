require_relative "../element.rb"

class Thunder < Element
  attr_reader :name
  def initialize
    @name = "thunder"
  end

  def attack
    15
  end

  def defence
    0
  end

  def warrior_correction
    0
  end

  def wizard_correction
    5
  end

  def fighter_correction
    0
  end
end