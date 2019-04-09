require_relative '../job.rb'
require_relative '../skills/warrior_skill'
require_relative '../calculators/warrior_calculators/warrior_attack_calculator.rb'
require_relative '../calculators/warrior_calculators/warrior_defence_calculator.rb'

class Warrior < Job
  # 保有する属性（性別、属性、装備）に攻撃力が設定されていて、その合計値が返り値になる。
  # 職業との組み合わせによっては補正値がさらに追加され、追加される値はwarrior_attack_calculatorが保持。
  def attack
    WarriorAttackCalculator.new(self).calculate
  end

  # 保有する属性（性別、属性、装備）に防御力が設定されていて、その合計値が返り値になる。
  # 職業との組み合わせによっては補正値がさらに追加され、追加される値はwarrior_defence_calculatorが保持。
  def defence
    WarriorDefenceCalculator.new(self).calculate
  end

  # Warriorインスタンスが保有する情報から、どのスキルを持つことになるかをWarriorSkill内で判定する。
  # WarriorSkill内のnameメソッドでそのスキルの名前を返り値として受け取っている。
  def skill
    WarriorSkill.new(self).name
  end
end
