require_relative "../job.rb"
require_relative "../skills/warrior_skill"
require_relative "../calculators/warrior_calculators/warrior_attack_calculator.rb"
require_relative "../calculators/warrior_calculators/warrior_defence_calculator.rb"

class Warrior < Job

  def attack
    WarriorAttackCalculator.new(sex: sex, element: element, equipment: equipment).calculate
  end

  def defence
    WarriorDefenceCalculator.new(sex: sex, element: element, equipment: equipment).calculate
  end

  def skill
    WarriorSkill.new(self).name
  end
end
