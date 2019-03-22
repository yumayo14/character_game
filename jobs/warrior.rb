require_relative "../job.rb"
require_relative "../calculators/warrior_calculators/warrior_attack_calculator.rb"
require_relative "../calculators/warrior_calculators/warrior_defence_calculator.rb"

class Warrior < Job

  def attack
    WarriorAttackCalculator.new(sex, element, equipment).calculate
  end

  def defence
    WarriorDefenceCalculator.new(sex, element, equipment).calculate
  end
  # 冗長
  # 職業のクラスでやること？、計算するためのクラスを作ってもいいのでは？？、計算された攻撃力、防御力を持っているだけでいい。

  def skill
    return Skill.new("ギガスラッシュ") if sex == "men"
    Skill.new("ビッグバン")
  end
  # 性別だけで別れているが、増えた場合やばい。
  # 今の状態、キャラクターがskillを持ってしまっている。どこがスキルの情報を持つべきところ？
  # 理想、warrior.skillで返ってくる
  #
end
