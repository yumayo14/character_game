require_relative "../job.rb"
require_relative "../corrections/warrior_correction.rb"

class Warrior < Job

  def attack
    Object.const_get(@sex.capitalize).new.offence + Object.const_get(@element.capitalize).new.offence + Object.const_get(@equipment.capitalize).new.offence + WarriorCorrection.new(@element, @equipment).offence_correction
  end

  def defence
    Object.const_get(@sex.capitalize).new.defence + Object.const_get(@element.capitalize).new.defence + Object.const_get(@equipment.capitalize).new.defence + WarriorCorrection.new(@element, @equipment).defence_correction
  end

  def skill
    return Skill.new("ギガスラッシュ") if sex == "men"
    Skill.new("ビッグバン")
  end

  # def offence_bonus
  #   bonus = 0
  #   bonus += 20 if @equipment == "sword"
  #   bonus
  # end
  #
  # def defence_bonus
  #   bonus = 0
  #   bonus += 10 if @element == "water"
  #   bonus
  # end
end
