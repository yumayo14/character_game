require_relative "../skill"
require_relative "warrior_skills/male_warrior_skill"
require_relative "warrior_skills/female_warrior_skill"

class WarriorSkill < Skill
  def name
    checked_skill.name
  end

private
  def checked_skill
    return MaleWarriorSkill.new if sex.name == "men"
    FemaleWarriorSkill.new if sex.name == "women"
  end
end