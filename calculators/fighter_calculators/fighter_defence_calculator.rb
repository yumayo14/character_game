require_relative "../defence_calculator"

class FighterDefenceCalculator < DefenceCalculator
private
  def correction
    equipment.correction
  end
end
