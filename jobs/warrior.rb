require_relative "../job.rb"

class Warrior < Job
  def skill
    return Skill.new("ギガスラッシュ") if sex == "men"
    Skill.new("ビッグバン")
  end

  def offence_bonus
    bonus = 0
    bonus += 20 if @equipment == "sword"
    bonus
  end

  def defence_bonus
    bonus = 0
    bonus += 10 if @element == "water"
    bonus
  end
end
