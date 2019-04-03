require_relative "../job.rb"
require_relative "../skills/fighter_skill"
require_relative "../calculators/fighter_calculators/fighter_attack_calculator.rb"
require_relative "../calculators/fighter_calculators/fighter_defence_calculator.rb"

class Fighter < Job
  def attack
    FighterAttackCalculator.new(self).calculate
  end

  def defence
    FighterDefenceCalculator.new(self).calculate
  end

  def skill
    FighterSkill.new(self).name
  end
end
