# module Sex
#   Men = {sex: "男性", offence: 5, defence: 0}
#   Women = {sex: "女性", offence: 0, defence: 5}
# end
class Sex
  attr_reader :sex
  def initialize(sex)
    @sex = sex
  end

  def offence
    return 5 if sex == "男性"
    0
  end

  def defence
    return 5 if sex == "女性"
    0
  end
end

# 2
# if文を消す