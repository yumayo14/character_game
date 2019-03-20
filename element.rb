# module Element
#   Wind = {el: "風", offence: 5, defence: 10}
#   Water = {el: "水", offence: 10, defence: 5}
#   Thunder = {el: "雷", offence: 15, defence: 0}
# end

class Element
  attr_reader :name, :offence, :defence
  def initialize(element)

    @name = element
    @offence = offence_check
    @defence = defence_check
  end

  def offence_check
    return 5 if @name == "風"
    return 10 if @name == "水"
    15 if @name == "雷"
  end

  def defence_check
    return 10 if @name == "風"
    return 5 if @name == "水"
    0 if @name == "雷"
  end
end