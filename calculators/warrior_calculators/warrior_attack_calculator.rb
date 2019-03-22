require_relative "../attack_calculator"

class WarriorAttackCalculator < AttackCalculator

  def calculate(*attributes)
    super + correction
  end

  def correction
    return 20 if equipment.name == "sword"
    0
  end
#   この箇所だけのために、各クラスに@nameインスタンスを作成、直したい。
end