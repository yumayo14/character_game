require_relative "../defence_calculator"

class WarriorDefenceCalculator < DefenceCalculator

private
  def correction
    element_correction
  end

  def element_correction
    return 10 if element.name == "water"
    0
  end
end