# module Sex
#   Men = {sex: "男性", offence: 5, defence: 0}
#   Women = {sex: "女性", offence: 0, defence: 5}
# end
class Sex
  attr_reader :sex, :offence, :defence
  def initialize(sex)
    @sex = sex
    @offence = offence_check
    @defence = defence_check
  end

  def offence_check
    return 5 if @sex == "男性"
    0
  end

  def defence_check
    return 5 if @sex == "女性"
    0
  end
end