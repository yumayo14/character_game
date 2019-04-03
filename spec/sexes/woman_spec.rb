require_relative "../../sexes/woman.rb"
require_relative "../../jobs/warrior"

describe "Woman" do
  let(:women) { Woman.new }

  it "攻撃力は変わらない" do
    expect(women.attack).to eq(0)
  end
  it "防御力が５上昇する" do
    expect(women.defence).to eq(5)
  end
  context "職業が異なる場合" do
    let(:element) { Wind.new }
    let(:equipment) { Equipment.new }
    context "戦士の場合" do
      let(:warrior) { Warrior.new(sex: women, element: element, equipment: equipment) }
      it "スキルがビッグバン" do
        expect(warrior.skill).to eq("ビッグバン")
      end
    end
    context "魔法使いの場合" do
      it "スキルがメラミ"
    end
    context "武闘家の場合" do
      it "スキルがカウンター"
    end
  end
end