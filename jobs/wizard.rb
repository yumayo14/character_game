require_relative "../job.rb"

class Wizard < Job
  def skill
    return Skill::Begilama if @sex[:sex] == "男性"
    Skill::Melami if @sex[:sex] == "女性"
  end

  def offence_bonus
    bonus = 0
    bonus += 20 if @equipment[:eq] == "杖"
    bonus
  end

  def defence_bonus
    bonus = 0
    bonus += 5 if @element[:el] == "雷"
    bonus
  end
end