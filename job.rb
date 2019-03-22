require_relative "job.rb"
require_relative "sex.rb"
require_relative "element.rb"
require_relative "equipment.rb"
require_relative "skill.rb"

class Job
  attr_reader :sex, :element, :equipment, :attack, :defence
  def initialize(sex, element = Element.new("風"), equipment = Equipment.new("剣"))
    @sex = sex
    @element = element
    @equipment = equipment
    @attack = @sex.offence + @element.offence + @equipment.offence + offence_bonus
    @defence = @sex.defence + @element.defence + @equipment.defence + defence_bonus
  end

  def skill
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def offence_bonus
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence_bonus
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

# 2
# offence_bonus、defence_bonusを消すべきだが、if文を用いないやり方で行えるようにする。
