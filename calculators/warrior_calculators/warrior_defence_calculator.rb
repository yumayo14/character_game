require_relative "../defence_calculator"

class WarriorDefenceCalculator < DefenceCalculator

  def calculate(*attributes)
    super + correction
  end

  def correction
    return 10 if element.name == "water"
    0
  end
end