require_relative '../defence_calculator'

class WarriorDefenceCalculator < DefenceCalculator

  private

  def correction
    element.warrior_correction
  end
end
