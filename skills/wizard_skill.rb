require_relative "../skill.rb"
require_relative "wizard_skills/female_wizard_skill.rb"
require_relative "wizard_skills/male_wizard_skill.rb"

class WizardSkill < Skill
  def name
    checked_skill.name
  end

private
  def checked_skill
    return MaleWizardSkill.new if sex.name == "men"
    FemaleWizardSkill.new if sex.name == "women"
  end
end
