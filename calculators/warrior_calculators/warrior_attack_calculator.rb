require_relative "../attack_calculator"

class WarriorAttackCalculator < AttackCalculator

private
  def correction
    equipment_correction
  end

  def equipment_correction
    return 20 if equipment.name == "sword"
    0
  end

# 武器や各属性に補正値を持たせる

#   この箇所だけのために、各クラスに@nameインスタンスを作成、直したい。
end

# 分岐を使わざるを得ない状況、吉岡くんの限界に陥った時
# 実質、ほぼ０
# if文を消すため、多態性、classにしていく。