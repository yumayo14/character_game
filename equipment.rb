class Equipment
  def offence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

# 2
# if文を消す
# class Equipment
#   # attr_reader :name
#   # def initialize(equipment)
#   #   @name = equipment
#   # end
#
#   def offence
#     # return 30 if name == "sword"
#     # return 30 if name == "stick"
#     # 20 if name == "glove"
#   end
#
#   def defence
#     # return 30 if name == "sword"
#     # return 10 if name == "stick"
#     # 20 if name == "glove"
#   end
# end