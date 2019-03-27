require_relative "../../sexes/men.rb"
require_relative "../../jobs/warrior"

describe "Men" do
  let(:men) { Men.new }
  it "攻撃力が５上昇する" do
    expect(men.offence).to eq(5)
  end
  it "防御力は変わらない" do
    expect(men.defence).to eq(0)
  end
  context "職業が異なる場合" do
    let(:element) { Wind.new }
    let(:equipment) { Equipment.new }
    context "戦士の場合" do
      let(:warrior) { Warrior.new(sex: men, element: element, equipment: equipment) }
      it "スキルがギガスラッシュ" do
        expect(warrior.skill).to eq("ギガスラッシュ")
      end
    end
    context "魔法使いの場合" do
      it "スキルがベギラマ" do
      end
    end
    context "武闘家の場合" do
      it "スキルがブースト" do
      end
    end
  end
end