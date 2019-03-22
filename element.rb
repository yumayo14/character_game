class Element
  attr_reader :name
  def initialize(element)
    @name = element
  end

  def offence
    return 5 if name == "風"
    return 10 if name == "水"
    15 if name == "雷"
  end

  def defence
    return 10 if name == "風"
    return 5 if name == "水"
    0 if name == "雷"
  end
end

# 2
# if文を消す