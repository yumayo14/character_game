require_relative "../defence_calculator"

class WarriorDefenceCalculator < DefenceCalculator

private
  def correction
    element_correction
  end

  def element_correction
    return 10 if element.name == "water"
    0
  end
end
# 分岐を使わざるを得ない状況、吉岡くんの限界に陥った時
# 実質、ほぼ０
# if文を消すため、多態性、classにしていく。