require_relative "job.rb"
require_relative "sex.rb"
require_relative "sexes/men.rb"
require_relative "sexes/women.rb"
require_relative "element.rb"
require_relative "elements/wind"
require_relative "elements/water"
require_relative "elements/thunder"
require_relative "equipment.rb"
require_relative "equipments/sword"
require_relative "equipments/stick"
require_relative "equipments/glove"
require_relative "skill.rb"


class Job
  attr_reader :sex, :element, :equipment
  def initialize(sex, element = "wind", equipment = "sword")
    @sex = sex
    @element = element
    @equipment = equipment
    # @skill = Skill.new(self.class, sex)
  end

  def attack
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def skill
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

# 2
# offence_bonus、defence_bonusを消すべきだが、if文を用いないやり方で行えるようにする。
