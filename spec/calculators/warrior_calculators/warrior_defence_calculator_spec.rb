require_relative "../../../jobs/warrior.rb"
require_relative "../../../calculators/warrior_calculators/warrior_defence_calculator"

describe "WarriorDefenceCalculator" do
  let(:warrior) { Warrior.new(sex: sex, element: element, equipment: equipment) }
  let(:defence_calculator) { WarriorDefenceCalculator.new(warrior) }
  context "性別が男性の場合" do
    let(:sex) { Man.new }
    context "属性が風の場合" do
      let(:element) { Wind.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "ディフェンスポイントの合計が40になる" do
          expect(defence_calculator.calculate).to eq 40
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "ディフェンスポイントの合計が20になる" do
          expect(defence_calculator.calculate).to eq 20
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "ディフェンスポイントの合計が30になる" do
          expect(defence_calculator.calculate).to eq 30
        end
      end
    end
    context "属性が水の場合" do
      let(:element) { Water.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "防御力の補正値が10加算され、ディフェンスポイントの合計が45になる" do
          expect(defence_calculator.calculate).to eq 45
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "防御力の補正値が10加算され、ディフェンスポイントの合計が25になる" do
          expect(defence_calculator.calculate).to eq 25
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "防御力の補正値が10加算され、ディフェンスポイントの合計が35になる" do
          expect(defence_calculator.calculate).to eq 35
        end
      end
    end
    context "属性が雷の場合" do
      let(:element) { Thunder.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "ディフェンスポイントの合計が30になる" do
          expect(defence_calculator.calculate).to eq 30
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "ディフェンスポイントの合計が10になる" do
          expect(defence_calculator.calculate).to eq 10
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "ディフェンスポイントの合計が20になる" do
          expect(defence_calculator.calculate).to eq 20
        end
      end
    end
  end
  context "性別が女性の場合" do
    let(:sex) { Woman.new }
    context "属性が風の場合" do
      let(:element) { Wind.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "ディフェンスポイントの合計が45になる" do
          expect(defence_calculator.calculate).to eq 45
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "ディフェンスポイントの合計が25になる" do
          expect(defence_calculator.calculate).to eq 25
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "ディフェンスポイントの合計が35になる" do
          expect(defence_calculator.calculate).to eq 35
        end
      end
    end
    context "属性が水の場合" do
      let(:element) { Water.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "防御力の補正値が10加算され、ディフェンスポイントの合計が50になる" do
          expect(defence_calculator.calculate).to eq 50
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "防御力の補正値が10加算され、ディフェンスポイントの合計が30になる" do
          expect(defence_calculator.calculate).to eq 30
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "防御力の補正値が10加算され、ディフェンスポイントの合計が40になる" do
          expect(defence_calculator.calculate).to eq 40
        end
      end
    end
    context "属性が雷の場合" do
      let(:element) { Thunder.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "ディフェンスポイントの合計が35になる" do
          expect(defence_calculator.calculate).to eq 35
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "ディフェンスポイントの合計が15になる" do
          expect(defence_calculator.calculate).to eq 15
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "ディフェンスポイントの合計が25になる" do
          expect(defence_calculator.calculate).to eq 25
        end
      end
    end
  end
end