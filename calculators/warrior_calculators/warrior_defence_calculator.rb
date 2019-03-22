require_relative "../defence_calculator"

class WarriorDefenceCalculator < DefenceCalculator

  def calculate
    super + correction
  end

  def correction
    return 10 if element == "water"
    0
  end
end