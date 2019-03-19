require_relative '../warrior.rb'

describe "Character" do
  describe "Warrior" do
    context "性別が異なる場合" do
      let(:male_warrior) { Warrior.new(Sex::Men, Element::Wind, Equipment::Sword) }
      let(:female_warrior) { Warrior.new(Sex::Women, Element::Wind, Equipment::Sword) }
      it "男性の方が女性よりアタックポイントが５ポイント高い" do
        expect(male_warrior.attack - female_warrior.attack).to be 5
      end
      it "男性はスキルがギガスラッシュ" do
        expect(male_warrior.skill[:sk]).to eq("ギガスラッシュ")
      end
      it "女性の方が男性よりディフェンスポイントが5ポイント高い" do
        expect(female_warrior.defence - male_warrior.defence).to be 5
      end
      it "女性はスキルがビッグバン" do
        expect(female_warrior.skill[:sk]).to eq("ビッグバン")
      end
    end
    context "属性が異なる場合" do
      let(:wind_warrior) { Warrior.new(Sex::Men, Element::Wind, Equipment::Sword) }
      let(:water_warrior) { Warrior.new(Sex::Men, Element::Water, Equipment::Sword) }
      let(:thunder_warrior) { Warrior.new(Sex::Men, Element::Thunder, Equipment::Sword) }
      it "風の場合、アタックポイントが５、ディフェンスポイントが10上昇する" do
        expect(wind_warrior.element[:offence]).to be 5
        expect(wind_warrior.element[:defence]).to be 10
      end
      it "水の場合、アタックポイントが10、ディフェンスポイントが5上昇する" do
        expect(water_warrior.element[:offence]).to be 10
        expect(water_warrior.element[:defence]).to be 5
      end
      # 属性による補正をどのようにして書くか
      it "雷の場合、アタックポイントが15、ディフェンスポイントが0上昇する" do
        expect(thunder_warrior.element[:offence]).to be 15
        expect(thunder_warrior.element[:defence]).to be 0
      end
    end

    # it "キャラクターの職業" do
    #   character = Character.new("warrior", Element::Wind, Equipment::Sword)
    #   expect(character.job.job_name).to eq("戦士")
    # end
    #
    # it "キャラクターの属性" do
    #   character = Character.new("warrior", Element::Wind, Equipment::Sword)
    #   expect(character.job.element[:el]).to eq("風")
    # end
    #
    # it "キャラクターの装備" do
    #   character = Character.new("warrior", Element::Wind, Equipment::Sword)
    #   expect(character.job.equipment[:eq]).to eq("剣")
    # end
    #
    # it "キャラクターのスキル" do
    #   character = Character.new("warrior", Element::Wind, Equipment::Sword)
    #   expect(character.job.skill[:sk]).to eq("ギガスラッシュ")
    # end
    #
    # it "キャラクターの攻撃力" do
    #   character = Character.new("warrior", Element::Wind, Equipment::Sword)
    #   expect(character.job.parameter[:offence]).to eq(60)
    # end
    #
    # it "キャラクターの防御力" do
    #   character = Character.new("warrior", Element::Wind, Equipment::Sword)
    #   expect(character.job.parameter[:defence]).to eq(30)
    # end
  end
end