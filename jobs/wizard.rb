# frozen_string_literal: true

require_relative '../job.rb'
require_relative '../skills/wizard_skill.rb'
require_relative '../calculators/wizard_calculators/wizard_attack_calculator.rb'
require_relative '../calculators/wizard_calculators/wizard_defence_calculator.rb'

class Wizard < Job
  # 保有する属性（性別、属性、装備）に攻撃力が設定されていて、その合計値が返り値になる。
  # 職業との組み合わせによっては補正値がさらに追加され、追加される値はwizard_attack_calculatorで保持。
  def attack
    WizardAttackCalculator.new(self).calculate
  end

  # 保有する属性（性別、属性、装備）に防御力が設定されていて、その合計値が返り値になる。
  # 職業との組み合わせによっては補正値がさらに追加され、追加される値はwizard_defence_calculatorで。
  def defence
    WizardDefenceCalculator.new(self).calculate
  end

  # Wizardインスタンスが保有する情報から、どのスキルを持つことになるかをWizardSkill内で判定する。
  # WizardSkill内のnameメソッドでそのスキルの名前を返り値として受け取っている。
  def skill
    WizardSkill.new(self).name
  end
end
