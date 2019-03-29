require_relative "../defence_calculator"

class WizardDefenceCalculator < DefenceCalculator
  private
  def correction
    element_correction
  end

  def element_correction
    return 5 if element.name == "thunder"
    0
  end
end