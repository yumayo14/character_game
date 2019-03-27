require_relative "../attack_calculator"

class WarriorAttackCalculator < AttackCalculator
private
  def correction
    equipment_correction
  end

  def equipment_correction
    return 20 if equipment.name == "sword"
    0
  end
end
