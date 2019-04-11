require_relative '../attack_calculator'

class FighterAttackCalculator < AttackCalculator
  private

  def correction
    element.fighter_correction
  end
end
