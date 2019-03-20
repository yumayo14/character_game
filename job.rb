class Job
  attr_reader :sex, :element, :equipment, :skill, :attack, :defence
  def initialize(sex, el = Element::Wind, eq = Equipment::Sword)
    @sex = sex
    @element = el
    @equipment = eq
    @skill = skill_check
    @attack = @sex[:offence] + @element[:offence] + @equipment[:offence] + offence_bonus
    @defence = @sex[:defence] + @element[:defence] + @equipment[:defence] + defence_bonus
  end

  def skill_check
  end

  def offence_bonus
  end

  def defence_bonus
  end
end

