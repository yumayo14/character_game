class Sex
  def offence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

# 2
# if文を消す
# # 2
# # 下のif文を消す
#
# # class Sex
# #   def offence
# #     # return 5 if sex == "men"
# #     #0
# #   end
# #
# #   def defence
# #     # return 5 if sex == "women"
# #     # 0
# #   end
# # end