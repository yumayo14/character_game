require_relative "../../../jobs/warrior.rb"
require_relative "../../../calculators/warrior_calculators/warrior_attack_calculator"

describe "WarriorAttackCalculator" do
  let(:warrior) { Warrior.new(sex: sex, element: element, equipment: equipment) }
  let(:attack_calculator) { WarriorAttackCalculator.new(warrior) }
  context "性別が男性の場合" do
    let(:sex) { Man.new }
    context "属性が風の場合" do
      let(:element) { Wind.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "攻撃力に補正値が20加算され、アタックポイントの合計が60になる" do
          expect(attack_calculator.calculate).to eq 60
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "アタックポイントの合計が40になる" do
          expect(attack_calculator.calculate).to eq 40
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "アタックポイントの合計が30になる" do
          expect(attack_calculator.calculate).to eq 30
        end
      end
    end
    context "属性が水の場合" do
      let(:element) { Water.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "攻撃力に補正値が20加算され、アタックポイントの合計が65になる" do
          expect(attack_calculator.calculate).to eq 65
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "アタックポイントの合計が45になる" do
          expect(attack_calculator.calculate).to eq 45
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "アタックポイントの合計が35になる" do
          expect(attack_calculator.calculate).to eq 35
        end
      end
    end
    context "属性が雷の場合" do
      let(:element) { Thunder.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "攻撃力に補正値が20加算され、アタックポイントの合計が70になる" do
          expect(attack_calculator.calculate).to eq 70
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "アタックポイントの合計が50になる" do
          expect(attack_calculator.calculate).to eq 50
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "アタックポイントの合計が40になる" do
          expect(attack_calculator.calculate).to eq 40
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
        it "攻撃力に補正値が20加算され、アタックポイントの合計が55になる" do
          expect(attack_calculator.calculate).to eq 55
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "アタックポイントの合計が35になる" do
          expect(attack_calculator.calculate).to eq 35
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "アタックポイントの合計が25になる" do
          expect(attack_calculator.calculate).to eq 25
        end
      end
    end
    context "属性が水の場合" do
      let(:element) { Water.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "攻撃力に補正値が20加算され、アタックポイントの合計が60になる" do
          expect(attack_calculator.calculate).to eq 60
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "アタックポイントの合計が40になる" do
          expect(attack_calculator.calculate).to eq 40
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "アタックポイントの合計が30になる" do
          expect(attack_calculator.calculate).to eq 30
        end
      end
    end
    context "属性が雷の場合" do
      let(:element) { Thunder.new }
      context "装備が剣の場合" do
        let(:equipment) { Sword.new }
        it "攻撃力に補正値が20加算され、アタックポイントの合計が65になる" do
          expect(attack_calculator.calculate).to eq 65
        end
      end
      context "装備が杖の場合" do
        let(:equipment) { Stick.new }
        it "アタックポイントの合計が45になる" do
          expect(attack_calculator.calculate).to eq 45
        end
      end
      context "装備がグローブの場合" do
        let(:equipment) { Glove.new }
        it "アタックポイントの合計が35になる" do
          expect(attack_calculator.calculate).to eq 35
        end
      end
    end
  end
end