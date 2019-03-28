require_relative "../../../jobs/warrior.rb"
require_relative "../../../calculators/warrior_calculators/warrior_defence_calculator"

describe "WarriorDefenceCalculator" do
  let(:warrior) { Warrior.new(sex: sex, element: element, equipment: equipment) }
  let(:defence_calculator) { WarriorDefenceCalculator.new(warrior) }
  describe "#calculate" do
    subject { defence_calculator.calculate }
    context "性別が男性の場合" do
      let(:sex) { Man.new }
      context "属性が風の場合" do
        let(:element) { Wind.new }
        context "装備が剣の場合" do
          let(:equipment) { Sword.new }
          it { is_expected.to eq 40 }
        end
        context "装備が杖の場合" do
          let(:equipment) { Stick.new }
          it { is_expected.to eq 20 }
        end
        context "装備がグローブの場合" do
          let(:equipment) { Glove.new }
          it { is_expected.to eq 30 }
        end
      end
      context "属性が水の場合" do
        let(:element) { Water.new }
        context "装備が剣の場合" do
          let(:equipment) { Sword.new }
          it { is_expected.to eq 45 }
        end
        context "装備が杖の場合" do
          let(:equipment) { Stick.new }
          it { is_expected.to eq 25 }
        end
        context "装備がグローブの場合" do
          let(:equipment) { Glove.new }
          it { is_expected.to eq 35 }
        end
      end
      context "属性が雷の場合" do
        let(:element) { Thunder.new }
        context "装備が剣の場合" do
          let(:equipment) { Sword.new }
          it { is_expected.to eq 30 }
        end
        context "装備が杖の場合" do
          let(:equipment) { Stick.new }
          it { is_expected.to eq 10 }
        end
        context "装備がグローブの場合" do
          let(:equipment) { Glove.new }
          it { is_expected.to eq 20 }
        end
      end
    end
    context "性別が女性の場合" do
      let(:sex) { Woman.new }
      context "属性が風の場合" do
        let(:element) { Wind.new }
        context "装備が剣の場合" do
          let(:equipment) { Sword.new }
          it { is_expected.to eq 45 }
        end
        context "装備が杖の場合" do
          let(:equipment) { Stick.new }
          it { is_expected.to eq 25 }
        end
        context "装備がグローブの場合" do
          let(:equipment) { Glove.new }
          it { is_expected.to eq 35 }
        end
      end
      context "属性が水の場合" do
        let(:element) { Water.new }
        context "装備が剣の場合" do
          let(:equipment) { Sword.new }
          it { is_expected.to eq 50 }
        end
        context "装備が杖の場合" do
          let(:equipment) { Stick.new }
          it { is_expected.to eq 30 }
        end
        context "装備がグローブの場合" do
          let(:equipment) { Glove.new }
          it { is_expected.to eq 40 }
        end
      end
      context "属性が雷の場合" do
        let(:element) { Thunder.new }
        context "装備が剣の場合" do
          let(:equipment) { Sword.new }
          it { is_expected.to eq 35 }
        end
        context "装備が杖の場合" do
          let(:equipment) { Stick.new }
          it { is_expected.to eq 15 }
        end
        context "装備がグローブの場合" do
          let(:equipment) { Glove.new }
          it { is_expected.to eq 25 }
        end
      end
    end
  end
end