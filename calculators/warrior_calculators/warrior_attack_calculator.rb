require_relative "../attack_calculator"

class WarriorAttackCalculator < AttackCalculator

  def calculate
    super + correction
  end

  def correction
    return 20 if equipment == "sword"
    0
  end
end