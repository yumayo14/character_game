require_relative "status_data.rb"

class Warrior
  attr_reader :sex, :job_name, :element, :equipment, :skill, :attack, :defence
  def initialize(sex, el, eq)
    # moduleにして切り出す。
    @sex = sex
    @element = el
    @equipment = eq
    @skill = skill_check
    @attack = @sex[:offence] + @element[:offence] + @equipment[:offence] + offence_bonus
    @defence = @sex[:defence] + @element[:defence] + @equipment[:defence] + defence_bonus
  end

  def skill_check
    return Skill::GigaSlash if @sex[:sex] == "男性"
    return Skill::BigBang if @sex[:sex] == "女性"
  end

  def offence_bonus
    bonus = 0
    bonus += 20 if @equipment[:eq] == "剣"
    bonus
  end

  def defence_bonus
    bonus = 0
    bonus += 10 if @element[:el] == "水"
    bonus
  end

end

# idは消す
# offece, defenceボーナスをprivateメソッド
# オブジェクト指向を身につけるための課題。クラスにできる所はクラスに。if文などになるべく頼らない。
# のちに、親クラスが欲しくなる
#
# 次にやること