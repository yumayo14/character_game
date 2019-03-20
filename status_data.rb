module Sex
  Men = {sex: "男性", offence: 5, defence: 0}
  Women = {sex: "女性", offence: 0, defence: 5}
end

module Element
  Wind = {el: "風", offence: 5, defence: 10}
  Water = {el: "水", offence: 10, defence: 5}
  Thunder = {el: "雷", offence: 15, defence: 0}
end

module Equipment
  Sword = {eq: "剣", offence: 30, defence: 30}
  Stick = {eq: "杖", offence: 30, defence: 10}
  Glove = {eq: "グローブ", offence: 20, defence: 20}
end

module Skill
  GigaSlash = {sk: "ギガスラッシュ"}
  BigBang = {sk: "ビッグバン"}
  Begilama = {sk: "ベギラマ"}
  Melami = {sk: "メラミ"}
end


#
# ファイルの切り分け
# クラスに変更
# その状態でテストを動かす