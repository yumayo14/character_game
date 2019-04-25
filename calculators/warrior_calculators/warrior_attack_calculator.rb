# frozen_string_literal: true

require_relative '../attack_calculator'

class WarriorAttackCalculator < AttackCalculator
  private

  def correction
    equipment.warrior_correction
  end
end
