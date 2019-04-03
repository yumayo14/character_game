require_relative "../skill"
require_relative "warrior_skills/warrior_man_skill"
require_relative "warrior_skills/warrior_woman_skill"

class WarriorSkill < Skill
  def name
    checked_skill.name
  end

  private

  def checked_skill
    return WarriorManSkill.new if sex.name == "men"
    WarriorWomanSkill.new if sex.name == "women"
  end
end
