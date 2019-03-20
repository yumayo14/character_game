# module Skill
#   GigaSlash = {sk: "ギガスラッシュ"}
#   BigBang = {sk: "ビッグバン"}
#   Begilama = {sk: "ベギラマ"}
#   Melami = {sk: "メラミ"}
# end

class Skill
  attr_reader :name
 def initialize(job, sex)
   @name = skill_check(job, sex)
 end

  def skill_check(job, sex)
    if sex == "男性"
      return "ギガスラッシュ" if job == "Warrior"
      return "ベギラマ" if job == "Wizard"
      "ブースト" if job == "Fighter"
    elsif sex == "女性"
      return "ビッグバン" if job == "Warrior"
      return "メラミ" if job == "Wizard"
      "カウンター" if job == "Fighter"
    end
  end
end








#
# ファイルの切り分け
# クラスに変更
# その状態でテストを動かす