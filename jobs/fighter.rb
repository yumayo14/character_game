require_relative '../job.rb'
require_relative '../skills/fighter_skill'
require_relative '../calculators/fighter_calculators/fighter_attack_calculator.rb'
require_relative '../calculators/fighter_calculators/fighter_defence_calculator.rb'

class Fighter < Job
  # 保有する属性（性別、属性、装備）に攻撃力が設定されていて、その合計値が返り値になる。
  # 職業との組み合わせによっては補正値がさらに追加され、追加される値はfighter_attack_calculatorが保持。
  def attack
    FighterAttackCalculator.new(self).calculate
  end

  # 保有する属性（性別、属性、装備）に防御力が設定されていて、その合計値が返り値になる。
  # 職業との組み合わせによっては補正値がさらに追加され、追加される値はfighter_defence_calculatorが保持。
  def defence
    FighterDefenceCalculator.new(self).calculate
  end

  # Fighterインスタンスが保有する情報から、どのスキルを保持するかをFighterSkill内で判定する。
  # FighterSkill内のnameメソッドで保持するスキルの名前を返り値として受け取る。
  def skill
    FighterSkill.new(self).name
  end
end
