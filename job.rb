require_relative "job.rb"
require_relative "sex.rb"
require_relative "element.rb"
require_relative "equipment.rb"
require_relative "skill.rb"

class Job
  attr_reader :sex, :element, :equipment, :skill, :attack, :defence
  def initialize(sex, element = Element.new("風"), equipment = Equipment.new("剣"))
    @sex = sex
    @element = element
    @equipment = equipment
    @skill = Skill.new(self.class.to_s, sex.sex)
    @attack = @sex.offence + @element.offence + @equipment.offence + offence_bonus
    @defence = @sex.defence + @element.defence + @equipment.defence + defence_bonus
  end

  def offence_bonus
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence_bonus
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

