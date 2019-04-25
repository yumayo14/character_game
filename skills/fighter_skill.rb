# frozen_string_literal: true

require_relative '../skill'
require_relative 'fighter_skills/fighter_man_skill'
require_relative 'fighter_skills/fighter_woman_skill'

class FighterSkill < Skill
  def name
    checked_skill.name
  end

  private

  def checked_skill
    return FighterManSkill.new if sex.name == 'man'

    FighterWomanSkill.new if sex.name == 'woman'
  end
end
