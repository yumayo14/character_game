# module Equipment
#   Sword = {eq: "剣", offence: 30, defence: 30}
#   Stick = {eq: "杖", offence: 30, defence: 10}
#   Glove = {eq: "グローブ", offence: 20, defence: 20}
# end

class Equipment
  attr_reader :name, :offence, :defence
  def initialize(equipment)
    @name = equipment
    @offence = offence_check
    @defence = defence_check
  end

  def offence_check
    return 30 if @name == "剣"
    return 30 if @name == "杖"
    20 if @name == "グローブ"
  end

  def defence_check
    return 30 if @name == "剣"
    return 10 if @name == "杖"
    20 if @name == "グローブ"
  end
end

# 2
# if文を消す