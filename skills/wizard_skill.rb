require_relative '../skill.rb'
require_relative 'wizard_skills/wizard_man_skill.rb'
require_relative 'wizard_skills/wizard_woman_skill.rb'

class WizardSkill < Skill
  def name
    checked_skill.name
  end

  private

  def checked_skill
    return WizardManSkill.new if sex.name == 'men'

    WizardWomanSkill.new if sex.name == 'women'
  end
end
