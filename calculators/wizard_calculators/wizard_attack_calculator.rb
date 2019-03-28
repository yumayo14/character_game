require_relative "../attack_calculator"

class WizardAttackCalculator < AttackCalculator
  private
  def correction
    equipment_correction
  end

  def equipment_correction
    return 20 if equipment.name == "stick"
    0
  end
end
