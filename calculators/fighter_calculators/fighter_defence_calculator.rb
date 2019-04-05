require_relative '../defence_calculator'

class FighterDefenceCalculator < DefenceCalculator
private
  def correction
    equipment.fighter_correction
  end
end
