require_relative '../skill'
require_relative 'fighter_skills/male_fighter_skill'
require_relative 'fighter_skills/female_fighter_skill'

class FighterSkill < Skill
  def name
    checked_skill.name
  end

private
  def checked_skill
    return MaleFighterSkill.new if sex.name == 'man'

    FemaleFighterSkill.new if sex.name == 'woman'
  end
end
