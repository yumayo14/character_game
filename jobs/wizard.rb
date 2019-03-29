require_relative "../job.rb"
require_relative "../skills/wizard_skill.rb"
require_relative "../calculators/wizard_calculators/wizard_attack_calculator.rb"
require_relative "../calculators/wizard_calculators/wizard_defence_calculator.rb"

class Wizard < Job
  def attack
    WizardAttackCalculator.new(self).calculate
  end

  def defence
    WizardDefenceCalculator.new(self).calculate
  end

  def skill
    WizardSkill.new(self).name
  end
end
