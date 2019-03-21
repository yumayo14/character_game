# module Equipment
#   Sword = {eq: "剣", offence: 30, defence: 30}
#   Stick = {eq: "杖", offence: 30, defence: 10}
#   Glove = {eq: "グローブ", offence: 20, defence: 20}
# end

class Equipment
  attr_reader :name
  def initialize(equipment)
    @name = equipment
  end

  def offence
    return 30 if name == "剣"
    return 30 if name == "杖"
    20 if name == "グローブ"
  end

  def defence
    return 30 if name == "剣"
    return 10 if name == "杖"
    20 if name == "グローブ"
  end
end

# 2
# if文を消す