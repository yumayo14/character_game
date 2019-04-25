# frozen_string_literal: true

require_relative '../attack_calculator'

class WizardAttackCalculator < AttackCalculator
  private

  def correction
    equipment.wizard_correction
  end
end
