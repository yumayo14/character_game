require_relative '../warrior.rb'

describe "Character" do
  describe "Warrior" do
    context "性別が男性の場合" do
      let(:male_warrior) { Warrior.new(Sex::Men, Element::Wind, Equipment::Sword) }
      let(:female_warrior) { Warrior.new(Sex::Women, Element::Wind, Equipment::Sword) }
      it "男性の方が女性よりアタックポイントが５ポイント高い" do
        expect(male_warrior.attack - female_warrior.attack).to be 5
      end
      it "男性はスキルがギガスラッシュ" do
        expect(male_warrior.skill[:sk]).to eq("ギガスラッシュ")
      end
      context "属性が異なる場合" do
        context "属性が風の場合" do
          let(:male_wind_warrior) { Warrior.new(Sex::Men, Element::Wind, Equipment::Sword) }
          it "アタックポイントが５、ディフェンスポイントが10上昇する" do
            expect(male_wind_warrior.element[:offence]).to be 5
            expect(male_wind_warrior.element[:defence]).to be 10
          end
          context "装備が異なる場合" do

          end
        end
        # 戦士の場合、追加で増加するポイントをどうテストケースに入れるかを考える。
        context "水の場合" do
          let(:male_water_warrior) { Warrior.new(Sex::Men, Element::Water, Equipment::Sword) }
          it "アタックポイントが10、ディフェンスポイントが5上昇する" do
            expect(male_water_warrior.element[:offence]).to be 10
            expect(male_water_warrior.element[:defence]).to be 5
          end
          it "戦士の場合、ディフェンスポイントが追加で10上昇する" do
            expect(male_water_warrior.defence_bonus).to be 10
          end
          context "装備が異なる場合" do

          end
        end
        context "雷の場合" do
          let(:male_thunder_warrior) { Warrior.new(Sex::Men, Element::Thunder, Equipment::Sword) }
          it "アタックポイントが15、ディフェンスポイントが0上昇する" do
            expect(male_thunder_warrior.element[:offence]).to be 15
            expect(male_thunder_warrior.element[:defence]).to be 0
          end
          context "装備が異なる場合" do

          end
        end
      end
    end
    context "性別が女性の場合" do
      it "女性の方が男性よりディフェンスポイントが5ポイント高い" do
        expect(female_warrior.defence - male_warrior.defence).to be 5
      end
      it "女性はスキルがビッグバン" do
        expect(female_warrior.skill[:sk]).to eq("ビッグバン")
      end
    end
  end
end
# 階層は深く網羅的にしていくようにする。女性⇨属性⇨装備