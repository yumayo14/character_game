require_relative "job.rb"
require_relative "sex.rb"
require_relative "element.rb"
require_relative "equipment.rb"
require_relative "skill.rb"

class Warrior < Job
  def skill
    return Skill.new("ギガスラッシュ") if @sex.sex == "男性"
    Skill.new("ビッグバン")
  end

  def offence_bonus
    bonus = 0
    bonus += 20 if @equipment.name == "剣"
    bonus
  end

  def defence_bonus
    bonus = 0
    bonus += 10 if @element.name == "水"
    bonus
  end
end
