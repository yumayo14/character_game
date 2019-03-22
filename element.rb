class Element
  def offence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

# 2
# 下のif文を消す

# class Element
#   def offence
#     # return 5 if name == "wind"
#     # return 10 if name == "water"
#     # 15 if name == "thunder"
#   end
#
#   def defence
#     # return 10 if name == "wind"
#     # return 5 if name == "water"
#     # 0 if name == "thunder"
#   end
# end