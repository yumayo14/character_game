# frozen_string_literal: true

require_relative '../defence_calculator'

class WizardDefenceCalculator < DefenceCalculator
  private

  def correction
    element.wizard_correction
  end
end
